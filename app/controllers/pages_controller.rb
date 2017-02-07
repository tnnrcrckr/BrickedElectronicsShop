class PagesController < ApplicationController
  def home
    render file: "pages/home.html.erb"
  end

  def help
    render file: "pages/help.html.erb"
  end

  def shop
    render file: "pages/shop.html.erb"
  end

  def account
    render file: "pages/account.html.erb"
  end
end
