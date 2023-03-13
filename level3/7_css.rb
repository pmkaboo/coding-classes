#^ 7 CSS

# CSS (cascading style sheets) is a language
# for specifying how HTML documents are presented
# to the users. It can be used in many ways, from
# basic ones like changing color and size of text,
# to creating whole layouts, animations, and more.

# CSS is a rule-based language, we define rules
# by applying a group of styles to a particular
# element or a group of elements.

# Stylesheets in rails are located in `app/assets/stylesheets`,
# if we wanted we could put all our css into the
# `application.css` that was created with the rails
# app, but this would get bloated very quickly, so
# it's better to split the css into multiple files,
# for starters it's a good idea to have at least
# one file per controller. If those get bloated
# aswell, we can continue dividing them by actions,
# or in some other meaningful way depending on the
# specific usecase.

# For example if we want all `h1` tags to have
# red color and large text, we would do it like this:

h1 {
  color: red;
  font-size: 50px;
}

# We can apply rules to multiple different
# tags at the same time:

h1, div {
  color: red;
  font-size: 50px;
}

# Similarly we can apply rules to all elements
# with a specific class attribute:

.some-class {
  color: red;
}

# Or id attribute:

#some-id {
  color: red;
}

# Sometimes we need to apply the rule to
# elements nested inside other elements.
# For example rows in a table:

#table .row {
  color: red;
}

#* SASS

# SASS is an extension to CSS that adds
# a bunch of features, likes variables,
# mixins, and others, but most importantly
# it removes the need to write curly braces
# and semicolons all the time.

# Similarly to HAML, it's not supported by
# default and we will need to add it to the
# Gemfile:

# `gem 'sassc-rails'`

# this line should already exist there, just
# needs to be uncommented.
