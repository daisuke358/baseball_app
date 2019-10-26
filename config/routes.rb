Rails.application.routes.draw do
  root 'static_pages#home'

  get 'glossary', to: 'static_pages#glossary'

  get '/c_pitcher', to: 'stats#central_pitcher'
  get '/c_batter', to:'stats#central_batter'
  get '/p_pitcher', to: 'stats#pacific_pitcher'
  get '/p_batter', to: 'stats#pacific_batter'
  get '/personal_stats', to: 'stats#personal_stats'

end
