class PlaceCoordinatesJob < ApplicationJob
  queue_as :default

  def perform(place_id)
    place = Place.find(place_id)
    return if !place.location.present?
    results = Geocoder.search(place.location)
    if results.any?
      x = results.first_coordinates[0]
      y = results.first_coordinates[1]
      place.update(x: x, y: y)
    end
  end
end
