defmodule ShoppingList.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string
      add :list_id, references(:lists, on_delete: :nothing)

      timestamps()
    end
    create index(:items, [:list_id])

  end
end
