Rails.application.routes.draw do
  root 'static_pages#home'

  get 'glossary', to: 'static_pages#glossary'

  get '/c_pitcher', to: 'stats#central_pitcher'
  get '/c_batter', to:'stats#central_batter'
  get '/p_pitcher', to: 'stats#pacific_pitcher'
  get '/p_batter', to: 'stats#pacific_batter'
  get '/personal_pitcher_stats', to: 'stats#personal_pitcher_stats'
  get '/personal_batter_stats', to: 'stats#personal_batter_stats'


end
