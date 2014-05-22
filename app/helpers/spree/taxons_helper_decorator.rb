Spree::TaxonsHelper.class_eval do
      def generate_link_add_on_makers_in_taxon(add_on_makers)
        add_on_makers.map do |add_on_maker|
         link_to(add_on_maker.name, latest_path) + "|"
        end
      end
end