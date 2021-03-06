defmodule Superrentals.Rental do
  use Superrentals.Web, :model

  schema "rentals" do
    field :title, :string
    field :owner, :string
    field :city, :string
    field :type, :string
    field :image, :string
    field :bedrooms, :integer

    timestamps
  end

  @required_fields ~w(title owner city type image bedrooms)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
