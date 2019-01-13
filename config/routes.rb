Rails.application.routes.draw do
  get 'entries'  => 'entries#index'
  get 'entries/:id' => 'entries#show'
  get 'entries/new'=>'entries#new'
  get 'entries/:id/edit' => 'entries#edit'
  post'entries/:id' =>  'entries#update'
  patch 'entries/:id' => 'entries#delete'
end  