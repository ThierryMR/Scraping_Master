class AddColumnFilmeToFilme < ActiveRecord::Migration[5.2]
  def change
    add_column :filmes, :filme, :string
  end
end
