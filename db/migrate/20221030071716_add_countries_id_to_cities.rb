class AddCountriesIdToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :countries_id, :integer
  end
end
