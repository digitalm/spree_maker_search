Deface::Override.new(:virtual_path => 'spree/admin/add_on_menu/index',
  :name => 'add_add_on_maker_configration_menu_to_add_on_menu',
  :insert_bottom => "[data-hook='admin_add_on_menu_sidebar_menu']",
  :text => "
    <%= configurations_sidebar_menu_item t('add_on.add_on_maker'), admin_add_on_makers_path %>
  ")