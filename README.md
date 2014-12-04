# Beaker
Rails generators for Lonely Planet

### Marketing

```shell
rails g beaker:marketing NAME # Default generator
rails g beaker:marketing NAME --no-include-js # Exclude JS
rails g beaker:marketing NAME --no-include-styles # Exclude Styles
```

Creates
* `app/views/NAME.html.haml`
* `app/assets/javascripts/NAME/NAME.js`
* `app/assets/stylesheets/NAME/_NAME_common.sass`
* `app/assets/stylesheets/NAME/_NAME_ie.sass`
* `app/assets/stylesheets/NAME/_NAME_modern.sass`
* `app/assets/stylesheets/NAME/NAME.css.sass`
* `app/assets/stylesheets/NAME/NAME_ie.css.sass`
* `app/assets/data/NAME.yml`
