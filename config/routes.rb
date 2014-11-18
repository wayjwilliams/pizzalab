Rails.application.routes.draw do

  namespace :api do
    get 'pizza_joints' => 'pizza_joints#index'
    post 'pizza_joints' => 'pizza_joints#create'
    put 'pizza_joints/:id' => 'pizza_joints#update'
  end
  
end
