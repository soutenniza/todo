ENV["REDISTOGO_URL"] ||= "redis://redistogo:a899c94098b22dbd6f34a9db82eaf70c@beardfish.redistogo.com:9826/"

uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

Dir["/app/app/jobs/*.rb"].each { |file| require file }
