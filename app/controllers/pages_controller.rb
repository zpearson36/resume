class PagesController < ApplicationController
  def home
  end

  def bio
    @history = Work.all
  end

  def contact
  end
end
