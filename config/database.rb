# frozen_string_literal: true

require './app'

# set the database based on the current environment
database_name = "players_#{MyApp.environment}"
db = URI.parse(ENV.fetch('DATABASE_URL', nil))
# connect ActiveRecord with the current database
ActiveRecord::Base.establish_connection(
  adapter: db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  host: db.host,
  port: db.port,
  username: db.user,
  password: db.password,
  database: database_name.to_s,
  encoding: 'utf8'
)
