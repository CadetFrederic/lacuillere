class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @today = Date.today
  end
end
