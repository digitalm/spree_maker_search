module Spree
  class AddOnMaker < ActiveRecord::Base
    acts_as_paranoid
    has_many :add_on_maker_products
    has_many :products, :through => :add_on_maker_products
#    acts_as_list scope: :product

    validates :name, presence: true
    validates_uniqueness_of :name
  end
end