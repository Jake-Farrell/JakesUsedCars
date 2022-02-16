class PagesController < ApplicationController

  # GET /pages or /pages.json
  def aboutus
    @pages = Page.all
  end
end
