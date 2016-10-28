# README

TEST

This project is using Rails 5 and Ruby 2.2.2, it assumes you have Ruby 2.2.2 installed.

## Setup

	bundle install
	rake db:create:all
	rake db:migrate

## Running the application

In a terminal

`rails server`

Visit localhost:3000 in your browser

## Running the test suite

The test suite uses rspec and cucumber. To run the cucumber test you must have PhantomJS installed.

	rspec
	rake cucumber

