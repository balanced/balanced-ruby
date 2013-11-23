#!/usr/bin/env rake

require "rake"
require "rspec/core/rake_task"
require "bundler/gem_tasks"
require 'rspec'

desc "Run spec suite"
RSpec::Core::RakeTask.new(:spec) do |task|

  # see http://murphyslaw.github.io/blog/2012/04/06/run-specs-excluding-integration-specs/
  file_list = FileList['spec/**/*_spec.rb']
  # exclude scenarios_spec ntil we're ready to knock it out
  %w(scenarios_spec.rb).each do |exclude|
    file_list = file_list.exclude("spec/scenarios_spec.rb")
  end
  task.pattern = file_list

end

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
