# Instructions

Install Omnibus Vagrant plugins:

    vagrant plugin install vagrant-omnibus

Start vagrant:

    vagrant up

To run all tests:

    bundle exec rspec

To run only unit tests:

    bundle exec rspec --tag unit