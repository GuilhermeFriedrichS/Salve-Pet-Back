class AddImageToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :image, null: false, foreign_key: true
  end
end
