require 'bundler/capistrano'

set :application, 'www.wasteblue.com'

set :keep_releases, 3

set :scm, :git

set :repository, 'git://github.com/arferreira/wasteblue.git'

set :branch, 'master'

set :deploy_via, :remote_cache 

set :user, "root"

set :use_sudo, false

set :deploy_to, '/var/www/wasteblue'

set :current, "#{deploy_to}/current"

role :web, application
role :app, application
role :db,  application, primary: true


namespace :deploy do
  task :start do
    %w(config/database.yml).each do |path|
      from  = "#{deploy_to}/#{path}"
      to    = "#{current}/#{path}"

      run "if [ -f '#{to}' ]; then rm '#{to}'; fi; ln -s #{from} #{to}"
    end

    run "cd #{current} && RAILS_ENV=production && GEM_HOME=/opt/local/ruby/gems && bundle exec unicorn_rails -c #{deploy_to}/config/unicorn.rb -D"

  end

  task :stop do
    # vamos fazer de outra forma entao hehehehehe (66) fiquei louco agora isso nao rodaria nem a pau rsrs perai vou pensar Zzz abre outra aba ai please
    run "if [ -e /var/www/wasteblue/shared/pids/unicorn.pid ]; then kill `cat /var/www/wasteblue/shared/pids/unicorn.pid`; fi;"
  end

  task :restart do
    stop
    start
  end
end

