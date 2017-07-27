class PagesController < ApplicationController
  def home
    @history = Work.all
    @education = Education.all
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
