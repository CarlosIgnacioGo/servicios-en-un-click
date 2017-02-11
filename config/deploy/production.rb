set :stage, :production
set :rails_env, :production
    
server '35.161.169.30', user: 'ubuntu', roles: %w{web app db}, primary: true