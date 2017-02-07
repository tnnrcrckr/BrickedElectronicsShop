class PagesController < ApplicationController
  def home
    render file: "layouts/application.html.erb"
  end

  def help
    render html: "Need help?"
  end

  def shop
    render html: "You are shopping."
  end

  def account
    render html: "This is your account."
  end
end
