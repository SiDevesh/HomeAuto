Rails.application.routes.draw do
  root 'static#dash'
  get 'lightings' => 'static#lightings', as: :lightings
  get 'status' => 'static#status', as: :status

  get 'api/weather', to: 'weather_api#get_weather'
  get 'api/lighting/1/status', to: 'lighting_api#get_status'
  get 'api/lighting/1/status/:status', to: 'lighting_api#post_status'

end