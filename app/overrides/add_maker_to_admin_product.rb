Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_maker_to_admin_product',
  :insert_top => "[data-hook='admin_product_form_additional_fields']",
  :text => "
    <%= f.field_container :add_on_makers do %>
      <%= f.label :add_on_maker_ids, t('add_on.add_on_maker') %>
      <%= f.collection_select(:add_on_maker_ids, Spree::AddOnMaker.all, :id, :name, { :include_blank => Spree.t('match_choices.none') }, { :class => 'select2' }) %>
      <%= f.error_message_on :add_on_makers %>
    <% end %>
  ")

