# bin/rails g migration CreateComments commenter:string body:string post:integer
class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :body
      t.integer :post

      t.timestamps
    end
  end
end
