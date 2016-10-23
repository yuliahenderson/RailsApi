class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.belongs_to :cast, foreign_key: true
      t.belongs_to :movie, foreign_key: true

      t.timestamps
    end
  end
end
