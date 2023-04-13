#^ 13. Update

# Updating a resource is very similar to creating
# the resource, it's also a multi-step process
# where the user first requests the form to edit
# the data, then he submits the form, and if there
# are no errors the resource is updated, otherwise
# the form is re-rendered with the error messages
# and the process repeats.

#* controller actions

# These steps are in rails conventionally handled
# with `edit` and `update` actions. A basic implementation
# of these actions could look like this:

class ItemsController
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to @item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end
end

#* partials

# The form for editing the resource will look exactly
# the same as the form for creating the resource, and
# thanks to the form builder we used, even the code will
# be the same, since it correctly determines the url
# based on whether the model object we give it was previously
# saved or not.

# And because we don't want to write the same code twice,
# we're going to extract the form into a shared view
# called 'partial'. The names of partial views are prefixed
# with an underscore 'app/views/items/_form.html.erb',
# and since this code is shared between multiple views
# it's a good practice to not use the instance variables
# there, because we don't want it to be dependent on
# the implementation of the controller actions.

# app/views/items/_form.haml
= form_with(model: item) do |form|
  .name
    = form.label :name
    = form.text_field :name

  .price
    = form.label :price
    = form.number_field :price

  .submit= form.submit

# app/views/items/new.haml
%h1 New item
= render 'form', item: @item

# app/views/items/edit.haml
%h1 Edit item
= render 'form', item: @item

#~ exercise:
# - implement controller actions and views
#   necessary for updating the posts
# - use partial view for the form
# - on index page add a link to each posts
#   edit form
# - on post page add a link to edit form of
#   that post
