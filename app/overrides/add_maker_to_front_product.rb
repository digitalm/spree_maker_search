Deface::Override.new(:virtual_path => 'spree/products/show',
  :name => 'add_maker_to_front_product',
  :insert_before => "[data-hook='description']",
  :text => "
<% if @add_on_maker_product %>
<h3 class='product-maker-name'><%= @add_on_maker_product.add_on_maker.name %></h3>
<% end %>
  ")