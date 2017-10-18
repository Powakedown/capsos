class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def draw_marker(housings)
  @hash = Gmaps4rails.build_markers(housings) do |housing, marker|
    marker.lat housing.latitude
    marker.lng housing.longitude
    marker.json({ address: housing.address })
    marker.picture({ :url => "http://res.cloudinary.com/doodlid/image/upload/v1505158241/Save%20images/diago_marker.svg", :width => 64,
      :height => 91 });
    end
  end
end
