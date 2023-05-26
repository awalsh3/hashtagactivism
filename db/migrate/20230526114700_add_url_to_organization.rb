class AddUrlToOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :url, :string
  end
end
