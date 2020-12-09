class CreateUserPermits < ActiveRecord::Migration[6.0]
  def change
    create_table :user_permits do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :permit_id, null: false, foreign_key: true
      t.date :application_date
      t.boolean :is_permit

      t.timestamps
    end
  end
end
