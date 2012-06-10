ignore %r{^doc}
guard 'rspec', :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/balanced/(.+)\.rb$})  { |m| "spec/balanced/#{m[1]}_spec.rb" }
  watch(%r{^lib/balanced/resources/(.+)\.rb$})  { |m| "spec/balanced/resources/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
