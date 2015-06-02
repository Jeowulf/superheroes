class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :powers
      t.string :secret_identity
      t.string :nemesis
      t.integer :villains_captured
      t.string :image_url

      t.timestamps null: false
    end
  end
end
