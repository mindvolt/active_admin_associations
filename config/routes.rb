if Rails.application.config.activeadmin_associations.autocomplete_models
  models = Rails.application.config.activeadmin_associations.autocomplete_models.join('|')
  Rails.application.routes.draw do
    get '/autocomplete/:model' => 'autocomplete#index', :model => /(#{models})/,
      :defaults => { :format => 'json' }
  end
end
