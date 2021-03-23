#  bin/rails g migration AddPasswordToUsers password:string
class AddPasswordToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password, :string
  end
end
