class AddUrlMapToEvents < ActiveRecord::Migration
  def change
    add_column :events, :url_map, :string
  end
end
