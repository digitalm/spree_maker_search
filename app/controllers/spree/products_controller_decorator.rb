Spree::ProductsController.class_eval do
    before_filter :load_product_maker, :only => :show
    def load_product_maker
      @add_on_maker_product = Spree::AddOnMakerProduct.includes(:add_on_maker).where(:product_id => @product.id).first
logger.info @add_on_maker_product.inspect
    end
end