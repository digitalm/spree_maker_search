Deface::Override.new(:virtual_path => 'spree/taxons/show',
  :name => 'add_makers_to_front_taxon_products',
  :insert_before => "[data-hook='taxon_products']",
  :text => "
  <% if @add_on_makers && @add_on_makers.any? %>
    <div class='add_on_maker'>
    <ul>
      <li><%=t('add_on.add_on_maker')%></li>
    </ul>
    <ul>
      <% @add_on_makers.each do |add_on_maker| %>
        <% next unless add_on_maker %>
        <li><%= link_to(add_on_maker.name, taxons_advanced_search_path(:q => {:add_on_makers_id_eq => add_on_maker.id}) ) %></li>
      <% end %>
    </ul>
  </div>
  <div class='clear'></div>
  <% end %>
  ")

