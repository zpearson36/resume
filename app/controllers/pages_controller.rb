class PagesController < ApplicationController
  def home
  end

  def bio
    @history = Work.all
  end

  def contact
  end

  def education
    @education = Education.all
  end
end
