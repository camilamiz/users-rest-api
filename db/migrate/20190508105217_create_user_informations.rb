class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :document_number
      t.string :rating

      t.timestamps
    end
  end
end
