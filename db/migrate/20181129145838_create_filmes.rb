class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :title
      t.string :summary
      t.float :rating

      t.timestamps
    end
  end
end
