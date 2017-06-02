class MycellarwinesController < ApplicationController
  def index
    # @mycellarwines = current_user.mycellarwines
    @mycellarwines = Mycellarwine.all

    render("mycellarwines/index.html.erb")
  end

  def show
    @mycellarwine = Mycellarwine.find(params[:id])

    render("mycellarwines/show.html.erb")
  end

  def new
    @mycellarwine = Mycellarwine.new

    render("mycellarwines/new.html.erb")
  end

  def create
    @mycellarwine = Mycellarwine.new
    @mycellarwine.wine_name = params[:wine_name]
    @mycellarwine.year = params[:year]
    @mycellarwine.price = params[:price]
    @mycellarwine.varietal_id = params[:varietal_id]
    @mycellarwine.winery = params[:winery]
    @mycellarwine.bucket_list_wine = params[:bucket_list_wine]
    @mycellarwine.image_id = params[:image_id]
    @mycellarwine.user_id = params[:user_id]

    save_status = @mycellarwine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/mycellarwines/new", "/create_mycellarwine"
        redirect_to("/mycellarwines")
      else
        redirect_back(:fallback_location => "/", :notice => "Mycellarwine created successfully.")
      end
    else
      render("mycellarwines/new.html.erb")
    end
  end

  def edit
    @mycellarwine = Mycellarwine.find(params[:id])

    render("mycellarwines/edit.html.erb")
  end

  def update
    @mycellarwine = Mycellarwine.find(params[:id])

    @mycellarwine.wine_name = params[:wine_name]
    @mycellarwine.year = params[:year]
    @mycellarwine.price = params[:price]
    @mycellarwine.varietal_id = params[:varietal_id]
    @mycellarwine.winery = params[:winery]
    @mycellarwine.bucket_list_wine = params[:bucket_list_wine]
    @mycellarwine.image_id = params[:image_id]

    @mycellarwine.user_id = params[:user_id]
    save_status = @mycellarwine.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/mycellarwines/#{@mycellarwine.id}/edit", "/update_mycellarwine"
        redirect_to("/mycellarwines/#{@mycellarwine.id}", :notice => "Mycellarwine updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Mycellarwine updated successfully.")
      end
    else
      render("mycellarwines/edit.html.erb")
    end
  end

  def destroy
    @mycellarwine = Mycellarwine.find(params[:id])

    @mycellarwine.destroy

    if URI(request.referer).path == "/mycellarwines/#{@mycellarwine.id}"
      redirect_to("/", :notice => "Mycellarwine deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Mycellarwine deleted.")
    end
  end
end
