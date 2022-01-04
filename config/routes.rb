Rails.application.routes.draw do
  resources :students do
    resources :schedules
    get 'download_schedule', on: :member
  end
  resources :class_students
  resources :sections
  resources :class_rooms
  resources :teachers do
    resources :teacher_subjects, shallow: true
  end
  resources :subjects
  root to: 'subjects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
