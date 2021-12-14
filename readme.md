# README

* How to use program

`ruby app/parser.rb webserver.log -most_views`

`ruby app/parser.rb webserver.log -unique_views`

* Approach

Input is being handeled using ARGV and ARGF.

** Most views

First algorithm counts all views for all pages, then it sorts pages my view count

** Unique views

First algorithm makes a set(unique values) of ips for all pages, then it counts unique ips for all pages, then it sorts pages by those unique ip count.

* How to run the test suite

`rspec`

There is a dependency on rspec gem for testing
