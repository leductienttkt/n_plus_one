class HomeController < ApplicationController

  def index
    notis = Noti.all
    Preloader.noti_preload(notis)
    notis.each do |noti|
      puts case noti.resource
      when Product
        noti.resource.shop.name
      when Order
        noti.resource.user.name
      end
    end
  end
end
