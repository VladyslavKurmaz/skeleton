# frozen_string_literal: true

Rails.application.routes.draw do
  authenticate :user do
    mount Motor::Admin => '/motor_admin'
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  root 'home#show'
end
