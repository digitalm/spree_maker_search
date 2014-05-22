object false
node(:count) { @add_on_makers.count }
node(:total_count) { @add_on_makers.total_count }
node(:current_page) { params[:page] ? params[:page].to_i : 1 }
node(:per_page) { params[:per_page] || Kaminari.config.default_per_page }
node(:pages) { @add_on_makers.num_pages }
child @add_on_makers => :add_on_makers do
  attributes :id, :name
end