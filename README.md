# Beaker
Rails generators for Lonely Planet

![alt tag Beaker](http://i.giphy.com/8dGP6ex3Es45W.gif)

### Marketing

```shell
rails g beaker:marketing NAME # Default generator
rails g beaker:marketing NAME --no-include-js # Exclude JS
rails g beaker:marketing NAME --no-include-styles # Exclude Styles
```

Creates
* `app/views/NAME.html.haml`
* `app/assets/javascripts/NAME/NAME.js`
* `app/assets/stylesheets/NAME/NAME.css.sass`
* `app/assets/data/NAME.yml`
