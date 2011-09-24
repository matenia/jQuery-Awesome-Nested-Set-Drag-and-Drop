# encoding: utf-8
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require File.join(File.dirname(__FILE__), 'lib', 'awesome_nested_set', 'version')
 
desc 'Default: run unit tests.'
task :default => :test

desc 'Test the awesome_nested_set plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs += ['lib', 'test']
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the awesome_nested_set plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'AwesomeNestedSet'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "awesome_nested_set"
    gemspec.version = CollectiveIdea::Acts::NestedSet::Version.dup
    gemspec.summary = "An awesome nested set implementation for Active Record"
    gemspec.description = "An awesome nested set implementation for Active Record"
    gemspec.email = "galeta.igor@gmail.com"
    gemspec.homepage = "https://github.com/galetahub/awesome_nested_set"
    gemspec.authors = ["Brandon Keepers", "Daniel Morrison", "Igor Galeta"]
    gemspec.files = FileList["[A-Z]*", "lib/**/*"]
    gemspec.rubyforge_project = "awesome_nested_set"
    
    gemspec.add_dependency('activerecord', '>= 3.0.0')
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
