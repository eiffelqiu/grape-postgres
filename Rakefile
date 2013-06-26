require 'bundler' 
Bundler.require(:deploy)
$:.unshift "./db"

namespace :db do
  require "sequel"
  namespace :migrate do
    Sequel.extension :migration
	  
	  config = YAML.load_file("#{Dir.pwd}/config/database.yml")
    ENV['DATABASE_URL'] = "jdbc:postgresql://localhost/#{config['database']}?user=#{config['user']}&password=#{config['password']}"

    task :connect do
      if ENV['DATABASE_URL']
        DB = Sequel.connect(ENV['DATABASE_URL'])
      else
        puts 'ABORTING: You must set the DATABASE_URL environment variable!'
        exit false
      end
    end
 
    desc 'Perform migration reset (full erase and migration up).'
    task :reset => [:connect] do
      Sequel::Migrator.run(DB, "#{Dir.pwd}/db", :target => 0)
      Sequel::Migrator.run(DB, "#{Dir.pwd}/db")
      puts '*** db:migrate:reset executed ***'
    end
 
    desc 'Perform migration up/down to VERSION.'
    task :to => [:connect] do
      version = ENV['VERSION'].to_i
      if version == 0
        puts 'VERSION must be larger than 0. Use rake db:migrate:down to erase all data.'
        exit false
      end
 
      Sequel::Migrator.run(DB, "#{Dir.pwd}/db", :target => version)
      puts "*** db:migrate:to VERSION=[#{version}] executed ***"
    end
 
    desc 'Perform migration up to latest migration available.'
    task :up => [:connect] do
      Sequel::Migrator.run(DB, "#{Dir.pwd}/db")
      puts '*** db:migrate:up executed ***'
    end
 
    desc 'Perform migration down (erase all data).'
    task :down => [:connect] do
      Sequel::Migrator.run(DB, "#{Dir.pwd}/db", :target => 0)
      puts '*** db:migrate:down executed ***'
    end
  end
end