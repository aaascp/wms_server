Rails.application.routes.draw do
  root to:  'product#index'
  
  get '/product/:code' => 'product#send_code'

  mount ActionCable.server => '/cable'
end
