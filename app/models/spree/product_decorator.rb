module Spree
  Product.class_eval do
    has_many :add_on_maker_products
    has_many :add_on_makers, :through => :add_on_maker_products
  end
end