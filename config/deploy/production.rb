set :stage, :production
set :rails_env, :production
    
server '54.226.45.126', user: 'ubuntu', roles: %w{web app db}, primary: true