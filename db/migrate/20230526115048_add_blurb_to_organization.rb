class AddBlurbToOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :blurb, :string
  end
end
