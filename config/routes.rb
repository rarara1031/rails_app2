Rails.application.routes.draw do

  devise_for :users
  get 'hello/index' => 'hello#index'
  root 'hello#index' # 追記

  get 'hello/link'=>'hello#link'

  get'tweets'=>'tweets#index'

  get 'tweets/new' => 'tweets#new'
  # :createを追加
  post 'tweets' => 'tweets#create'
  get 'tweets/:id' => 'tweets#show',as: 'tweet'
  patch 'tweets/:id' => 'tweets#update'
  delete 'tweets/:id' => 'tweets#destroy' #ここに挿入！！！
  get 'tweets/:id/edit' => 'tweets#edit', as:'edit_tweet'
end