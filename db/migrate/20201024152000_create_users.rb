class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phoneno
      t.string :email
      t.string :age
      t.string :city
      t.string :occupation
      t.string :organization
      t.timestamps
      
    end
  end
end
