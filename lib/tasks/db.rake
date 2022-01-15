namespace :db do
  namespace :reset do
    task :full do
      exec('rake db:drop db:create db:migrate db:seed')
    end
  end
end
