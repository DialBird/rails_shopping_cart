namespace :db do
  desc 'Run db:migrate:reset, db:seed.'

  task :overhaul do
    Rake::Task['db:migrate:reset'].invoke
    Rake::Task['db:seed'].invoke
  end
end
