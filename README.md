https://rspec.info/

bundle config set path $HOME/.gem

bundle install

bundle binstubs --all

bin/rspec --init