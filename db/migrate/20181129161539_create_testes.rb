class CreateTestes < ActiveRecord::Migration[5.2]
  def change
    create_table :testes do |t|
      t.string :link
      t.string :title
      t.string :summary
      t.float :rating
      t.string :teste

      t.timestamps
    end
  end
end
