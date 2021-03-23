# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
mysql2: sudo apt-get install libmysqlclient-dev

- Tạo full chức năng:
    - rails g scaffold posts name:strinrg title:string content:string
- Tạo database từ file:
    - bin/rails db:migrate RAILS_ENV=development