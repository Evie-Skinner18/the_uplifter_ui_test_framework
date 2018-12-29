require_relative 'pages/the_uplifter_home.rb'
require_relative 'pages/music.rb'
require_relative 'pages/shop.rb'

# module is the superclass which will open the door to all the other classes' pages
module TheUplifterSite

  def the_uplifter_home
    Homepage.new
  end

  def music_page
    Music.new
  end

  def shop_page
    Shop.new
  end




end
