# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books
  resources :category
end
