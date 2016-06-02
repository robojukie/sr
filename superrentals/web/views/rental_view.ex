defmodule Superrentals.RentalView do
  use Superrentals.Web, :view

  def render("index.json", %{rentals: rentals}) do
    %{rentals: render_many(rentals, Superrentals.RentalView, "rental.json")}
  end

  def render("show.json", %{rental: rental}) do
    %{rental: render_one(rental, Superrentals.RentalView, "rental.json")}
  end

  def render("rental.json", %{rental: rental}) do
    %{id: rental.id,
      title: rental.title,
      owner: rental.owner,
      city: rental.city,
      type: rental.type,
      image: rental.image,
      bedrooms: rental.bedrooms}
  end
end

# defmodule Superrentals.RentalView do
#   use Superrentals.Web, :view
#   use JaSerializer.PhoenixView
#
#   attributes [:title, :owner, :city, :type, :image, :bedrooms]
# end
