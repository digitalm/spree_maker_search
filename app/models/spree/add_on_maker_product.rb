module Spree
  class AddOnMakerProduct < ActiveRecord::Base
    belongs_to :product, class_name: 'Spree::Product'
    belongs_to :add_on_maker, class_name: 'Spree::AddOnMaker', :foreign_key => :add_on_maker_id
  end
end