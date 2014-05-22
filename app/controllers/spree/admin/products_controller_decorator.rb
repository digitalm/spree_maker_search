Spree::Admin::ProductsController.class_eval do
  before_filter :load_add_on_maker, :only => :load_data

  def load_add_on_maker
    @add_on_maker = Spree::AddOnMaker.order(:name)
    logger.info @add_on_maker
  end
end