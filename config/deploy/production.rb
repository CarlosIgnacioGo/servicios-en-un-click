set :stage, :production
set :rails_env, :production
    
server '54.186.5.237', user: 'ubuntu', roles: %w{web app db}, primary: true