class CreatePools < ActiveRecord::Migration[6.1]
  def change
    create_table :pools do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
