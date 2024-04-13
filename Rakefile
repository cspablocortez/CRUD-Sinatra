require 'sinatra/activerecord/rake'
require './app'

desc "Open an IRB console preloaded with app environment"
task :console do
  exec "irb -r './app'"
end

desc "Alias for console"
task :c => :console
