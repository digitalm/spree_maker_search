Deface::Override.new(:virtual_path => 'spree/taxons/show',
  :name => 'add_makers_to_front_navigation',
  :insert_bottom => "[data-hook='taxon_sidebar_navigation']",
  :text => "
<% if @add_on_makers && @add_on_makers.any? %>
  <nav id='add_on_maker_sidebar'>
  <h6 class='add_on_maker'><%=t('add_on.add_on_maker')%></h6>
    <ul>
      <% @add_on_makers.each do |add_on_maker| %>
        <% next unless add_on_maker %>
        <li><%= link_to(add_on_maker.name, taxons_advanced_search_path(:q => {:add_on_makers_id_eq => add_on_maker.id})) %></li>
      <% end %>
    </ul>
  </nav>
<%end %>
  ")