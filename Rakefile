def exec( cmd )
    sh "bundle exec ruhoh #{cmd}"
end

desc "run web-server in development mode"
task :dev do
    exec "server 9292"
end


desc "Deploy to server"
task :deploy do
    exec "publish rsync"
end

task :default => :dev
