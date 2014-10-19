Spree::Core::Engine.routes.draw do
  resources :orders do
    resource :checkout, :controller => 'checkout' do
      member do
        get :alipay_checkout_payment
        #get :alipay_done
        #post :alipay_notify
      end
    end
  end

  # Add your extension routes here
  match '/alipay_checkout/done/', to: 'checkout#alipay_done', as: :alipay_done, via: [:get, :post]
  match '/alipay_checkout/notify/',to: 'checkout#alipay_notify', as: :alipay_notify, via: [:get, :post]

  #fix issue
  #https://github.com/spree/spree_auth_devise/commit/bab2593f75909feeed3f53b54a63c2edd25f7ba5
  #get '/checkout/registration' => 'checkout#registration', :as => :checkout_registration
  #put '/checkout/registration' => 'checkout#update_registration', :as => :update_checkout_registration

end

