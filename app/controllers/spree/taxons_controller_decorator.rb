module Spree
  Spree::TaxonsController.class_eval do
  alias_method :original_show, :show unless method_defined?(:original_show)

    def advanced_search
logger.info "############processing taxon/advanced_search######"
      @taxon = Taxon.find_by_permalink!(params[:id])
      return unless @taxon

      @products = Spree::Product.includes(:add_on_makers).where("available_on not ?",nil).uniq
      @q = Spree::Product.includes(:add_on_makers).search(params[:q])
      @products = @q.result(distinct: true).page(params[:page]).joins(:variants_including_master).joins(:add_on_makers)

      @searcher = build_searcher(params.merge(:taxon => @taxon.id))
      @searcher_products = @searcher.retrieve_products

      if @searcher_products.any?
        @products_ids = @searcher_products.pluck(:id)
logger.info @products_ids
        @add_on_maker_products_ids = Spree::AddOnMakerProduct.where(:product_id => @products_ids).pluck(:add_on_maker_id)
logger.info @add_on_maker_products.inspect
        @add_on_makers = Spree::AddOnMaker.where(:id => @add_on_maker_products_ids).order(:name)
      end

      render "show"
    end

    def show
logger.info "############processing taxon/show######"
      @taxon = Taxon.find_by_permalink!(params[:id])
      return unless @taxon

      @searcher = build_searcher(params.merge(:taxon => @taxon.id))
      @products = @searcher.retrieve_products

      if @products.any?
        @products_ids = @products.pluck(:id)
logger.info @products_ids
        @add_on_maker_products_ids = Spree::AddOnMakerProduct.where(:product_id => @products_ids).pluck(:add_on_maker_id)
logger.info @add_on_maker_products.inspect
        @add_on_makers = Spree::AddOnMaker.where(:id => @add_on_maker_products_ids).order(:name)
      end

    end

  end
end