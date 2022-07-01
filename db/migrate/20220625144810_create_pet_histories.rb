class CreatePetHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_histories do |t|
      t.integer :pets_id
      t.float :weigth
      t.float :height
      t.text :description
      t.belongs_to :Pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
