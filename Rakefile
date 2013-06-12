#!/usr/bin/env rake

require "rake"
require "rspec/core/rake_task"
require "bundler/gem_tasks"
require 'rspec'

desc "Run spec suite"
RSpec::Core::RakeTask.new(:spec) { |t| }

desc "Default the task to run the spec"
task :default => [:spec]

desc "Render template files"
task :render_executables do
  ruby File.dirname(__FILE__) + "/scenarios/render.rb"
end

desc "delete executables"
task :delete_executables do
  ruby File.dirname(__FILE__) + "/scenarios/delete.rb"
end

desc "render one template file"
task :render_one, :name do
  name = ENV['NAME']
  file = File.dirname(__FILE__) + "/scenarios/render_one.rb"
  ruby file, name
end
