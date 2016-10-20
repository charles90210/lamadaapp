Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/manifesto'

  get 'welcome/contact'

  get 'welcome/products'

  get 'welcome/faqs'

  get 'welcome/team'

  resources :invoices

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
