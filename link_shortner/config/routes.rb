Rails.application.routes.draw do

  get '/:shortrul' => 'shortner#index'

end
