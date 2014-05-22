Spree::Admin::ProductsHelper.class_eval do
      def add_on_suppliers_options_for(product)
        options = @add_on_suppliers.map do |add_on_supplier|
          selected = product.add_on_suppliers.include?(add_on_supplier)
          content_tag(:option,
                      :value    => add_on_supplier.id,
                      :selected => ('selected' if selected)) do
            add_on_supplier.name
          end
        end.join("").html_safe
      end
end