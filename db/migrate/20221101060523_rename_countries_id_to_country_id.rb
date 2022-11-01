class RenameCountriesIdToCountryId < ActiveRecord::Migration[5.2]

  def change
    rename_column :cities, :countries_id, :country_id
  end
end
