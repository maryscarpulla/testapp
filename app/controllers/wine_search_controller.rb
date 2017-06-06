require 'open-uri'

class WineSearchController < ApplicationController
  def wine_search_form
    # Nothing to do here.
    render("wine_search_form.html.erb")
  end

  def search_to_results
    @wine_search = params[:user_wine_search]

    # ==========================================================================
    # Your code goes below.
    #
    # The street address that the user typed is in the variable @street_address.
    # ==========================================================================

    url = "http://api.snooth.com/wines/?akey=4ki3im2n32x688cqwnb8onkpuwmvxo9yi3pbz4qrtmd9nmwt&ip=66.28.234.115&q=#{@wine_search}&xp=30"

    parsed_data = JSON.parse(open(url).read)
    @wines_from_api = parsed_data["wines"]


    render("wine_search_results.html.erb")


  end
end
