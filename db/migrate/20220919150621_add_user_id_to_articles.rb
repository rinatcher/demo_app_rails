class AddUserIdToArticles < ActiveRecord::Migration[7.0]
  has_many :articles

  def change
    add_column :articles, :user_id, :integer
  end
end
