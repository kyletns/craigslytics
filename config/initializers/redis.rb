if Rails.env.production?
  uri = URI.parse("redis://redistogo:31c13cebbebf24939db906dc8aa1549f@tarpon.redistogo.com:9218/")
  Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end

#Resque::Mailer.excluded_environments = [:test, :cucumber, :development]
#Resque.before_fork = Proc.new { ActiveRecord::Base.establish_connection }

#Resque.after_fork do |job|
#  ActiveRecord::Base.connection_handler.verify_active_connections!
#end

#Resque.before_fork do
#  defined?(ActiveRecord::Base) and
#    ActiveRecord::Base.connection.disconnect!
#end
#
#Resque.after_fork do
#  defined?(ActiveRecord::Base) and
#    ActiveRecord::Base.establish_connection
#end
