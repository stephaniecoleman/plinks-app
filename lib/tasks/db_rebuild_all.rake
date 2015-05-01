namespace :db do
  desc "Rebuild database"
  task :rebuild, [] => :environment do
    raise "Not allowed to run on production" if Rails.env.production?
    Rake::Task['db:drop'].execute
    puts "db dropped"
    Rake::Task['db:create'].execute
    puts "db created"
    Rake::Task['db:migrate'].execute
    puts "db migrated"
    Rake::Task['db:seed'].execute
    puts "db seeded"
  end
end