class CreatePermits < ActiveRecord::Migration[6.0]
  def change
    create_table :permits do |t|
      t.string :location
      t.string :permite_type

      t.timestamps
    end
  end
end
