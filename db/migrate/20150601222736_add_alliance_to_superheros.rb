class AddAllianceToSuperheros < ActiveRecord::Migration
  def change
    add_column :superheros, :alliance, :string
  end
end
