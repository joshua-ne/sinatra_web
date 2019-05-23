require_relative "./main"

configure :development, :test do 
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do 
  DataMapper.setup(:default,ENV['DATABASE_URL']) 
end


run Sinatra::Application