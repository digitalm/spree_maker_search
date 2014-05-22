class CreateSpreeMakerSearch < ActiveRecord::Migration
  def change
    create_table :spree_add_on_makers do |t|
      t.string     :name
      t.datetime   :deleted_at
      t.timestamps
    end
    create_table :spree_add_on_maker_products do |t|
      t.integer    :product_id
      t.integer    :add_on_maker_id
      t.integer    :position
      t.timestamps
    end
    create_table :spree_add_on_maker_translations do |t|
      t.integer    :add_on_maker_id
      t.string     :locale
      t.string     :name
      t.timestamps
    end
  end
end