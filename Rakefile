desc "run web-server in development mode"
task :dev do
    sh "bundle exec ruhoh server 9292"
end

desc "Deploy to web server"
task :deploy do
    require 'yaml'
    remote = remote_config
    system "bundle exec ruhoh publish rsync"
    Dir.chdir "../skr-core"
    system( "rake doc" )
    system( "rsync", "doc", "-avz", "--delete", remote + '/core/')
end

def remote_config
    config = YAML.load_file("publish.yml")["rsync"]
    "#{ config["user"] }@#{ config["host"] }:#{ config["destination"] }"
end

task :default => :dev
