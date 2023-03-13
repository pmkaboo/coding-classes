#^ 8. Models

# So far we've built a rails app that has
# just one static page. But static pages
# look the same for all users. If we want
# to save information and differentiate
# the app for the users, we will need to
# work with a database.

# For this we need a model. Models are
# located in `app/models`. Similarly to
# controllers, we can either create them
# manually, or with a rails generator:
#$ `rails generate model ModelName`
# Unlike controllers, model names are
# by convention in singular - item, post, ...

# Models represent tables in the database,
# so when we're creating a new model, we
# also need to create a new table. If you've
# used the `rails generate` command to create
# the model, it also created a migration
# file for you in `db/migrate`, if you've
# created the model manually, you need to
# create the migration aswell, for this it's
# better to always use the generator:
#$ `rails generate migration MigrationName`

# If the `MigrationName` starts with the word
# `Create`, it will be generated with code
# that creates a table with timestamp columns
# `created_at` and `updated_at`. To add more
# columns to the table, we need to edit the
# migration file:

create_table :users do |t|
  # t.column_type :column_name, options = {}
  t.string :name, null: false, default: 'default name'
  t.integer :age
  t.boolean :tos_accepted
end

# Editing the migration file doesn't actually
# edit the database, to apply the changes we need
# to run `rake db:migrate`.
# Most migrations are reversible and can be rolled
# back with `rake db:rollback`.

#~ exercise:
# - create a new model called 'Post'
# - in database the table should have columns:
#     - title -> string
#     - body -> text
