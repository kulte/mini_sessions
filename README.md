# MiniSessions

Minimal session-based authentication

## Installation

Add this line to your application's Gemfile:

    gem 'mini_sessions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mini_sessions

## You

You need to protect access to your Rails application,
but hate HTTP Basic Authentication. You don't have a User
model, and a full Rack-based authentication framework such
as [Devise](https://github.com/plataformatec/devise) would
be overkill for what you're trying to do. You just need to
simply have one application password that people must enter
before accessing your application.

## Me

(http://images.cheezburger.com/imagestore/2011/6/2/6557c073-a718-4099-90a5-67b1d3f0206e.jpg "A Good Guy")

## Usage

To use `mini_sessions`, all you need to do is include the `Authenticable` module
in any controller you want to restrict access to, and add the `before_filter`. An
example of using `mini_sessions` to restrict access to your Admin site would look
something like the following:

    class AdminController < ApplicationController
      include Authenticable

      before_filter :authenticate!
    end

## Credits

* [Daniel Leavitt](https://github.com/dleavitt) - for the implementation that this gem was extracted from
* [Me](https://github.com/kulte) - for extracting this gem for you :)
* You - for using this gem!
* You^2 - for making a pull request!!!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
