class BootstrapController < ApplicationController
  include BootstrapHelper

 def home
   @row_count = 3
   @attractions = get_user_interests
   @attr_batch = []
   @attractions.each_slice(3) {|g| @attr_batch << g}
   @pages = @attr_batch.size
   @current_page = params[:page] || 1
   @current_batch = @attr_batch[@current_page.to_i-1]
   render 'my_views/bootstrap'
 end

 def hotels
   @city = params[:city]
   @hotels = get_the_hotels @city
   @hotels_batch = []
   @hotels.each_slice(9) {|g| @hotels_batch << g}
   @pages = @hotels_batch.size
   @current_page = params[:page] || 1
   @current_batch = @hotels_batch[@current_page.to_i - 1]
   render 'my_views/hotels'
 end

 def hotel_booking
   hotel_name = params[:hotel_name]
   city = params[:city]
   hotel_id = params[:hotel_id]
   redirect_to 'http://www.holidayiq.com/' + hotel_name + '-' + city + '-' + 'hotel' + '-' + hotel_id + '.html'
 end

  def places
    @similar_places = get_similar_places
    p '@similar_places'
    p @similar_places
    @places_batch = []
    @similar_places.each_slice(3) {|g| @places_batch << g}
    @pages = @places_batch.size
    @current_page = params[:page] || 1
    @current_batch = @places_batch[@current_page.to_i-1]
    render 'my_views/places'
  end

end

