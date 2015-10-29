#require_relative 'lockfile_parser'
require 'bundler'

module Freezy
  class CLI

    def self.start(*args)
      lockfile = File.open('Gemfile.lock').read
      parse    = Bundler::LockfileParser.new(lockfile)
      specs    = parse.instance_variable_get(:@specs)

      locked_versions = {}.tap { |g| specs.each {|s| g[s.name] = s.version.to_s} }
      puts specs


      gemfile_specs = get_specs_from_gemfile
      # pega versao setada no gemfile
      gemfile_specs.map(&:requirements_list)

      locked_in_gemfile = {}.tap { |locked| gemfile_specs.each{ |g| locked[g.name] = g.requirements_list.first if g.requirements_list.first != '>= 0'} }

      require 'pry';binding.pry

      new_gemfile = []

      File.open 'teste', 'w' do |f|
        gemfile_specs.each do |g|
          version = locked_in_gemfile.fetch(g.name) { locked_versions[g.name] }
          line = []
          line << "gem '#{g.name}'"
          requirement = g.requirements_list.first
          line << "'#{version}'" if version

          f.puts line.join(', ')
        end
      end

      

      #File.open('teste', 'w') { |file| file.write(new_gemfile.join('"\n"')) }

      
      
      #require 'pry';binding.pry
      #a = Bundler::Definition.new('Gemfile.lock', nil, Bundler::Source::Rubygems.from_lock('Gemfile.lock'))
      #puts a
    end

    def self.get_specs_from_gemfile
      builder = Bundler::Dsl.new
      builder.eval_gemfile(Pathname.new('Gemfile').expand_path)
      builder.to_definition(Pathname.new("Gemfile.lock"), {})
      builder.dependencies
    end

  end
end

Freezy::CLI.start