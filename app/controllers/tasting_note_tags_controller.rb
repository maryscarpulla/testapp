class TastingNoteTagsController < ApplicationController
  def index
    @tasting_note_tags = TastingNoteTag.all

    render("tasting_note_tags/index.html.erb")
  end

  def show
    @tasting_note_tag = TastingNoteTag.find(params[:id])

    render("tasting_note_tags/show.html.erb")
  end

  def new
    @tasting_note_tag = TastingNoteTag.new

    render("tasting_note_tags/new.html.erb")
  end

  def create
    @tasting_note_tag = TastingNoteTag.new

    @tasting_note_tag.tasting_note_name = params[:tasting_note_name]

    save_status = @tasting_note_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tasting_note_tags/new", "/create_tasting_note_tag"
        redirect_to("/tasting_note_tags")
      else
        redirect_back(:fallback_location => "/", :notice => "Tasting note tag created successfully.")
      end
    else
      render("tasting_note_tags/new.html.erb")
    end
  end

  def edit
    @tasting_note_tag = TastingNoteTag.find(params[:id])

    render("tasting_note_tags/edit.html.erb")
  end

  def update
    @tasting_note_tag = TastingNoteTag.find(params[:id])

    @tasting_note_tag.tasting_note_name = params[:tasting_note_name]

    save_status = @tasting_note_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tasting_note_tags/#{@tasting_note_tag.id}/edit", "/update_tasting_note_tag"
        redirect_to("/tasting_note_tags/#{@tasting_note_tag.id}", :notice => "Tasting note tag updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tasting note tag updated successfully.")
      end
    else
      render("tasting_note_tags/edit.html.erb")
    end
  end

  def destroy
    @tasting_note_tag = TastingNoteTag.find(params[:id])

    @tasting_note_tag.destroy

    if URI(request.referer).path == "/tasting_note_tags/#{@tasting_note_tag.id}"
      redirect_to("/", :notice => "Tasting note tag deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tasting note tag deleted.")
    end
  end
end
