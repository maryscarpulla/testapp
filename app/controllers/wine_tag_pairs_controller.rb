class WineTagPairsController < ApplicationController
  def index
    @wine_tag_pairs = WineTagPair.all

    render("wine_tag_pairs/index.html.erb")
  end

  def show
    @wine_tag_pair = WineTagPair.find(params[:id])

    render("wine_tag_pairs/show.html.erb")
  end

  def new
    @wine_tag_pair = WineTagPair.new

    render("wine_tag_pairs/new.html.erb")
  end

  def create
    @wine_tag_pair = WineTagPair.new

    @wine_tag_pair.wine_id = params[:wine_id]
    @wine_tag_pair.tag_id = params[:tag_id]

    save_status = @wine_tag_pair.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/wine_tag_pairs/new", "/create_wine_tag_pair"
        redirect_to("/wine_tag_pairs")
      else
        redirect_back(:fallback_location => "/", :notice => "Wine tag pair created successfully.")
      end
    else
      render("wine_tag_pairs/new.html.erb")
    end
  end

  def edit
    @wine_tag_pair = WineTagPair.find(params[:id])

    render("wine_tag_pairs/edit.html.erb")
  end

  def update
    @wine_tag_pair = WineTagPair.find(params[:id])

    @wine_tag_pair.wine_id = params[:wine_id]
    @wine_tag_pair.tag_id = params[:tag_id]

    save_status = @wine_tag_pair.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/wine_tag_pairs/#{@wine_tag_pair.id}/edit", "/update_wine_tag_pair"
        redirect_to("/wine_tag_pairs/#{@wine_tag_pair.id}", :notice => "Wine tag pair updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Wine tag pair updated successfully.")
      end
    else
      render("wine_tag_pairs/edit.html.erb")
    end
  end

  def destroy
    @wine_tag_pair = WineTagPair.find(params[:id])

    @wine_tag_pair.destroy

    if URI(request.referer).path == "/wine_tag_pairs/#{@wine_tag_pair.id}"
      redirect_to("/", :notice => "Wine tag pair deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Wine tag pair deleted.")
    end
  end
end
