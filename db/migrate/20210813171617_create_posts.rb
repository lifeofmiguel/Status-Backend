# class CreatePosts < ActiveRecord::Migration[6.1]
#   def change
#     create_table :posts do |t|
#       t.string :name
#       t.integer :age
#       t.text :mood
#       t.text :status

#       t.timestamps
#     end
#   end
# end


class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content

      t.timestamps
    end
  end
end