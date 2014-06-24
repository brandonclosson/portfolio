# == Route Map (Updated 2014-06-23 13:21)
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           static_pages#home
#

Rails.application.routes.draw do
  root 'static_pages#home'

  resources :projects, only: [:index]
end
