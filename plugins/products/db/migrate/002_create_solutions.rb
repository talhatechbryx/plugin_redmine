class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :name
      t.text :description
      t.string :author
      t.text :reason
      t.references :product, index: true, foreign_key: true
      t.timestamps
    end
  end
end
