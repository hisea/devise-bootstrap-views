# Devise Bootstrap Views

Here are some of the highlights:

- Devise views with Bootstrap 4
- Used Bootstrap responsive columns
- I18n Support

***WARNING***

This gem copies lots of its code from [devise-i18n-views](https://github.com/mcasimir/devise-i18n-views) gem.

## Screenshot

![Screenshot](https://raw.githubusercontent.com/hisea/devise-bootstrap-views/master/Screenshot.png)

## Installation

Make sure Bootstrap 4 is installed, either as a Ruby gem or using CDN:

```html
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
```


Add this line to your application's Gemfile:

```ruby
gem 'devise-bootstrap-views', '~> 1.0'
```

And then execute:

    $ bundle

Then you can install the required translations in your `config/locales`. Use [devise-i18n](https://github.com/tigrish/devise-i18n) — the best source for updated Devise translations. You can manually generate locale files by executing `rails generate devise:views:locale <chosen_locale>`:

``` sh
rails generate devise:views:locale de
```

will generate `config/locales/devise.views.de.yml`.

## Customizing Views

The `devise:views:bootstrap_templates` generator will copy all views to your application, so you can modify the files as you wish:

``` sh
rails generate devise:views:bootstrap_templates
```

## Remove Devise Bootstrap views

If you would like to remove `devise-bootstrap-views`, please follow the steps below:

1. Remove `gem devise-bootstrap-views` from Gemfile
2. Command `bundle install`
3. Remove devise view files
    ```sh
    rails destroy devise:views
    ```
4. Generate devise view files again
    ```sh
    rails g devise:views
    ```

## Example

Sample Application can be found at this link - [Devise Boostrap Views Application](https://github.com/ethiraj-srinivasan/devise-boostrap-views)

## Contributing

1. Fork it ( https://github.com/hisea/devise-bootstrap-views/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
