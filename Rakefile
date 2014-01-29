#!/usr/bin/env rake

require "rake"
require "rspec/core/rake_task"
require "bundler/gem_tasks"
require 'rspec'

desc "Run spec suite"
RSpec::Core::RakeTask.new(:spec) do |task|
  file_list = FileList['spec/**/*_spec.rb']
  task.pattern = file_list
end

desc "Default the task to run the spec"
task :default => [:spec]
