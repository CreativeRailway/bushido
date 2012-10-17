class PagesController < ApplicationController

  def index
    @page = Page.find_by_name(params[:name])
  end

end
