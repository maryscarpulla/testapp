Rails.application.routes.draw do
  # Routes for the Wine_tag_pair resource:
  # CREATE
  get "/wine_tag_pairs/new", :controller => "wine_tag_pairs", :action => "new"
  post "/create_wine_tag_pair", :controller => "wine_tag_pairs", :action => "create"

  # READ
  get "/wine_tag_pairs", :controller => "wine_tag_pairs", :action => "index"
  get "/wine_tag_pairs/:id", :controller => "wine_tag_pairs", :action => "show"

  # UPDATE
  get "/wine_tag_pairs/:id/edit", :controller => "wine_tag_pairs", :action => "edit"
  post "/update_wine_tag_pair/:id", :controller => "wine_tag_pairs", :action => "update"

  # DELETE
  get "/delete_wine_tag_pair/:id", :controller => "wine_tag_pairs", :action => "destroy"
  #------------------------------

  # Routes for the Varietal resource:
  # CREATE
  get "/varietals/new", :controller => "varietals", :action => "new"
  post "/create_varietal", :controller => "varietals", :action => "create"

  # READ
  get "/varietals", :controller => "varietals", :action => "index"
  get "/varietals/:id", :controller => "varietals", :action => "show"

  # UPDATE
  get "/varietals/:id/edit", :controller => "varietals", :action => "edit"
  post "/update_varietal/:id", :controller => "varietals", :action => "update"

  # DELETE
  get "/delete_varietal/:id", :controller => "varietals", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the Suggested_wine resource:
  # CREATE
  get "/suggested_wines/new", :controller => "suggested_wines", :action => "new"
  post "/create_suggested_wine", :controller => "suggested_wines", :action => "create"

  # READ
  get "/suggested_wines", :controller => "suggested_wines", :action => "index"
  get "/suggested_wines/:id", :controller => "suggested_wines", :action => "show"

  # UPDATE
  get "/suggested_wines/:id/edit", :controller => "suggested_wines", :action => "edit"
  post "/update_suggested_wine/:id", :controller => "suggested_wines", :action => "update"

  # DELETE
  get "/delete_suggested_wine/:id", :controller => "suggested_wines", :action => "destroy"
  #------------------------------

  # Routes for the Tasting_note_tag resource:
  # CREATE
  get "/tasting_note_tags/new", :controller => "tasting_note_tags", :action => "new"
  post "/create_tasting_note_tag", :controller => "tasting_note_tags", :action => "create"

  # READ
  get "/tasting_note_tags", :controller => "tasting_note_tags", :action => "index"
  get "/tasting_note_tags/:id", :controller => "tasting_note_tags", :action => "show"

  # UPDATE
  get "/tasting_note_tags/:id/edit", :controller => "tasting_note_tags", :action => "edit"
  post "/update_tasting_note_tag/:id", :controller => "tasting_note_tags", :action => "update"

  # DELETE
  get "/delete_tasting_note_tag/:id", :controller => "tasting_note_tags", :action => "destroy"
  #------------------------------

  root to: "mycellarwines#index"

  # Routes for the Mycellarwine resource:
  # CREATE
  get "/mycellarwines/new", :controller => "mycellarwines", :action => "new"
  post "/create_mycellarwine", :controller => "mycellarwines", :action => "create"

  # READ
  get "/mycellarwines", :controller => "mycellarwines", :action => "index"
  get "/mycellarwines/:id", :controller => "mycellarwines", :action => "show"

  # UPDATE
  get "/mycellarwines/:id/edit", :controller => "mycellarwines", :action => "edit"
  post "/update_mycellarwine/:id", :controller => "mycellarwines", :action => "update"

  # DELETE
  get "/delete_mycellarwine/:id", :controller => "mycellarwines", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
