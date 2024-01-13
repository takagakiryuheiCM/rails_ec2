max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

environment ENV.fetch("RAILS_ENV") { "development" }

pidfile ENV.fetch("PIDFILE") { "tmp/pids/server.pid" }
plugin :tmp_restart

if ENV.fetch("RAILS_ENV") == "production"
  # 本番環境ではUNIXソケットを使用
  bind "unix:///var/www/rails_ec2/tmp/sockets/puma.sock"
else
  # 開発環境ではTCPポートを使用
  port ENV.fetch("PORT") { 3000 }
end
