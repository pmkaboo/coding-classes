#^ 12. Create

# In web applications, creating a new resource
# is typically a multi-step process:
# - user requests a form to fill out
# - user submits the form
# - if there are no errors, the resource is created
# - else the form is redisplayed with error messages

#* controller actions

# In rails we handle these steps with controller
# actions `new` and `create`. A basic implementation
# of these actions could look like this:

class ItemsController
  # The `new` action just instantiates a new item,
  # but doesn't save it - we will use it in the view
  # when building the form.
  def new
    @item = Item.new
  end

  # The `create` action also instantiates a new item,
  # but this time with some values for name and price.
  # When the item saves successfully we redirect to
  # the item show page, otherwise we render the `new` view.
  def create
    # The values for the new item are hardcoded right now,
    # we will get back to changing that later.
    @item = Item.new(name: 'pizza', price: 10)

    if @item.save
      redirect_to @item
    else
      render :new, status: :unprocessable_entity
    end
  end
end

# `redirect_to` causes the browser to make a new request
# while `render` just sends the rendered view as response
# to the current request. It's important to redirect after
# a save, because otherwise if user refreshed the page
# after the save, he would be refreshing the request to
# submit the form that created the item, so either another
# item would end up being created, or if duplicates are invalid
# an error would happen.

#~ exercise:
# - add `new` and `create` actions to the posts controller
# - update your routes if necessary
# - the `create` action can have dummy values for the post

#* view

# Rails provides a form builder for views, which saves us
# from typing a ton of html code and outputs a fully configured
# form that follows rails conventions:

# app/views/items/new.haml
.form= form_with(model: @item) do |form|
  .name
    = form.label :name
    = form.text_field :name

  .price
    = form.label :price
    = form.number_field :price

  .submit= form.submit

#~ exercise
# - create the view for the `new` action in the
#   posts controller
# - the view should display a form for creating
#   a new post
# - both title and body should be editable

#* strong parameters

# The data from the submitted form is put into the `params`,
# so the `create` controller action can access the name of
# the item with `params[:item][:name]` and the price with
# `params[:item][:price]`. We could pass these values to
# `Item.new` individually, but that would be quite verbose,
# and also become even worse over time as we add more fields
# to the model.
# So instead of that we will just pass a single
# hash with all the values, however this would create a vulnerability
# in our app, because some malicious user could submit extra
# values for fields which we didn't want to make editable
# with this form.
# To avoid this issue will use rails feature called `strong parameters`
# which lets us filter the `params`:

class ItemsController
  def create
    @item = Item.new(item_create_params)
    # ...
  end

  private

  def item_create_params
    params.require(:item).permit(:name, :price)
  end
end

#~ exercise:
# - update the values for the post in the `create` action
#   with actual values using the strong parameters
