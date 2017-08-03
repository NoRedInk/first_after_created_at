# FirstAfterCreatedAt, a tool for using binary search to search by created_at.
[![Build Status](https://travis-ci.org/NoRedInk/first_after_created_at.svg?branch=master)](https://travis-ci.org/NoRedInk/first_after_created_at)

Assuming you have an autoincrimenting primary key `id` and a id-sorted `created_at` column, you can use this gem to quickly search for items by time.

## Installation

Add this line to your application's Gemfile:

```Gemfile
gem 'first_after_created_at'
```

And then execute:
```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install first_after_created_at
```

## Usage

```ruby
ModelName.first_after_created_at(Time.parse('2017-01-01'))
=> #<ModelName:0x007f86fe7017c8 id: 1234, created_at: Sun, 01 Jan 2017 01:23:45 +0100
```

## Contributing

Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Added some feature')
    - ensure you include test coverage
4. Push to the branch (git push origin my-new-feature)
5. Create a pull request

We'll try to get new versions pushed ASAP



This project rocks and uses MIT-LICENSE.
