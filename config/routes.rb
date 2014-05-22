Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  get 'admin/add_on_makers/api', :to => 'admin/add_on_makers#api',  :defaults => { :format => 'json' }
  get 't/*id/advanced_search' => 'taxons#advanced_search', :as => :taxons_advanced_search

  namespace :admin do
    resources :add_on_makers , :only => [:index, :new, :create, :edit, :update, :destroy] do
    end
  end

end
