require_relative "./pages/the_uplifter_home"

#module is the superclass which will open the door to all the other classes' pages
module TheUplifterSite

  def the_uplifter_home
    Homepage.new
  end




end # end of module
