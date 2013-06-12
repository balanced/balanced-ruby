require 'fileutils'

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }
subdir_list.each do |scenario|
  FileUtils.rm_rf("./#{scenario}/executable.rb", secure: true)
end
