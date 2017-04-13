class PagesController < ApplicationController
  def home
    p = Product.all.sample(1)[0].id
    @reviews = Review.where(:product_id => p).sample(3)
    render file: "pages/home.html.erb"
  end

  def help
    render file: "pages/help.html.erb"
  end

  def shop
    render file: "pages/shop.html.erb"
  end
  
  def contact
    render file: "pages/contact.html.erb"
  end
  
  def about
    render file: "pages/about.html.erb"
  end
end
