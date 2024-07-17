class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      t.text :sid
      t.references :group, null: false, foreign_key: true
      t.text :name
      t.text :real_name
      t.text :display_name
      t.text :first_name
      t.text :last_name
      t.text :image_1024
      t.boolean :is_admin
      t.boolean :is_owner
      t.boolean :is_primary_owner
      t.timestamps

    end
  end
end