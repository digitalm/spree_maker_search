module Spree
  module Admin
    class AddOnMakersController < ResourceController

      def update_values_positions
        params[:positions].each do |id, index|
          AddOnMaker.where(:id => id).update_all(:position => index)
        end

        respond_to do |format|
          format.html { redirect_to admin_add_on_makers_url(params[:id]) }
          format.js  { render :text => 'Ok' }
        end
      end

      def index
        @add_on_maker = Spree::AddOnMaker.page(params[:page])
      end

      def api
        if params[:ids]
          @add_on_makers = Spree::AddOnMaker.where(:id => params[:ids].split(','))
        else
          @add_on_makers = Spree::AddOnMaker.accessible_by(current_ability, :read).load.ransack(params[:q]).result
        end
Rails.logger.debug "#######  executing admin/add_on_makers/api #######"
Rails.logger.debug current_ability.inspect
        @add_on_makers = @add_on_makers.page(params[:page]).per(params[:per_page])
Rails.logger.debug @add_on_makers.inspect
      end

    end
  end
end