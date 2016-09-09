set :stage, :production
set :rails_env, :production
    
server 'ip_del_server', user: 'ubuntu', roles: %w{web app db}, primary: true