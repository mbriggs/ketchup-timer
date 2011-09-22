$:.unshift File.expand_path("~/.rvm/lib")
require 'rvm/capistrano'
require 'bundler/capistrano'

set :application, "Ketchup Timer"

set :domain, "timer.mattbriggs.net"
set :user, "root"
set :app_dir, "/webapps/timer.mattbriggs.net"
set :rvm_ruby_string, '1.9.2'

set :scm, :git
set :repository, "git@github.com:mbriggs/ketchup-timer.git"
set :branch, "master"
set :git_shallow_clone, 1

role :web, domain
role :app, domain
role :db, domain, :primary => true

default_run_options[:pty] = true
set :use_sudo, :false
set :deploy_to, app_dir
set :deploy_via, :export

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:symlink" do
  run "cd #{current_path} && RAILS_ENV=production bundle exec rake assets:clean assets:precompile"
end
