Rails.application.routes.draw do
	resources :insights

	root "insights#index"

end
