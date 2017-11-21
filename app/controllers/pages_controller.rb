class PagesController < ApplicationController
  def contact
    @contact = Page.find_by(title: 'Contact')
  end

  def about
    @about = Page.find_by(title: 'About')
  end
end
