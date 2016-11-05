Rails.application.routes.draw do
  get 'blog/list' =>'blog#list'

  get 'blog/new' =>'blog#new'
  
  get 'blog/edit' => 'blog#edit'

  get 'blog/delete' => 'blog#delete'
 
  post 'blog/create' => 'blog#create'

  patch 'blog/update' => 'blog#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
