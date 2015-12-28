# Devise Bootstrap Views

Here are some of the highlights:

* Devise views with Bootstrap 3.
* Used Bootstrap responsive columns.
* I18n Support.

WARNING:
This gem copies lots of its code from [devise-i18n-views](https://github.com/mcasimir/devise-i18n-views) gem.

## Screenshot
![Screenshot](https://raw.githubusercontent.com/hisea/devise-bootstrap-views/master/Screenshot.png)

## Installation

Add this line to your application's Gemfile:

    gem 'devise-bootstrap-views'

And then execute:

    $ bundle

Add some minor css fix to your rails asset pipeline manifest

    # SASS
    *= require devise_bootstrap_views

    # LESS
    *= require devise_bootstrap_views_less

Then you need to install the required translations in your `config/locales`. You can do this either manually (downloading them from [devise-i18n-views/locales](https://github.com/mcasimir/devise-i18n-views/tree/master/locales)) or through the apposite generator `devise:views:locale`, eg.

``` sh
rails g devise:views:locale it
```

will generate `config/locales/devise.views.it.yml`.

## Customizing Views

The `devise:views:bootstrap_templates` generator will copy all views to your application, so you can modify the files as you wish:

``` sh
rails g devise:views:bootstrap_templates
```

## Example

Sample Application can be found at this link - [Devise Boostrap Views Application](https://github.com/ethiraj-srinivasan/devise-boostrap-views)

## Contributing

1. Fork it ( https://github.com/hisea/devise-bootstrap-views/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
