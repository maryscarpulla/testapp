class SuggestedWinesController < ApplicationController
  def index
    @suggested_wines = SuggestedWine.all

    render("suggested_wines/index.html.erb")
  end

  def show
    @suggested_wine = SuggestedWine.find(params[:id])

    render("suggested_wines/show.html.erb")
  end

  def new
    @suggested_wine = SuggestedWine.new

    render("suggested_wines/new.html.erb")
  end

  def create
    @suggested_wine = SuggestedWine.new

    @suggested_wine.wine_id = params[:wine_id]
    @suggested_wine.user_id_from = params[:user_id_from]
    @suggested_wine.user_id_to = params[:user_id_to]

    save_status = @suggested_wine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/suggested_wines/new", "/create_suggested_wine"
        redirect_to("/suggested_wines")
      else
        redirect_back(:fallback_location => "/", :notice => "Suggested wine created successfully.")
      end
    else
      render("suggested_wines/new.html.erb")
    end
  end

  def edit
    @suggested_wine = SuggestedWine.find(params[:id])

    render("suggested_wines/edit.html.erb")
  end

  def update
    @suggested_wine = SuggestedWine.find(params[:id])

    @suggested_wine.wine_id = params[:wine_id]
    @suggested_wine.user_id_from = params[:user_id_from]
    @suggested_wine.user_id_to = params[:user_id_to]

    save_status = @suggested_wine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/suggested_wines/#{@suggested_wine.id}/edit", "/update_suggested_wine"
        redirect_to("/suggested_wines/#{@suggested_wine.id}", :notice => "Suggested wine updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Suggested wine updated successfully.")
      end
    else
      render("suggested_wines/edit.html.erb")
    end
  end

  def destroy
    @suggested_wine = SuggestedWine.find(params[:id])

    @suggested_wine.destroy

    if URI(request.referer).path == "/suggested_wines/#{@suggested_wine.id}"
      redirect_to("/", :notice => "Suggested wine deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Suggested wine deleted.")
    end
  end
end
