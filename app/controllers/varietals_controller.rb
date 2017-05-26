class VarietalsController < ApplicationController
  def index
    @varietals = Varietal.all

    render("varietals/index.html.erb")
  end

  def show
    @varietal = Varietal.find(params[:id])

    render("varietals/show.html.erb")
  end

  def new
    @varietal = Varietal.new

    render("varietals/new.html.erb")
  end

  def create
    @varietal = Varietal.new

    @varietal.varietal_name = params[:varietal_name]

    save_status = @varietal.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/varietals/new", "/create_varietal"
        redirect_to("/varietals")
      else
        redirect_back(:fallback_location => "/", :notice => "Varietal created successfully.")
      end
    else
      render("varietals/new.html.erb")
    end
  end

  def edit
    @varietal = Varietal.find(params[:id])

    render("varietals/edit.html.erb")
  end

  def update
    @varietal = Varietal.find(params[:id])

    @varietal.varietal_name = params[:varietal_name]

    save_status = @varietal.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/varietals/#{@varietal.id}/edit", "/update_varietal"
        redirect_to("/varietals/#{@varietal.id}", :notice => "Varietal updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Varietal updated successfully.")
      end
    else
      render("varietals/edit.html.erb")
    end
  end

  def destroy
    @varietal = Varietal.find(params[:id])

    @varietal.destroy

    if URI(request.referer).path == "/varietals/#{@varietal.id}"
      redirect_to("/", :notice => "Varietal deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Varietal deleted.")
    end
  end
end
