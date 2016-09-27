defmodule ShoppingList.Item do
  use ShoppingList.Web, :model

  schema "items" do
    field :title, :string
    belongs_to :list, ShoppingList.List

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
