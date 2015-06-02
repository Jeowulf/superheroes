class CreateVillains < ActiveRecord::Migration
  def change
    create_table :villains do |t|
      t.string :name
      t.string :arch_nemesis
      t.string :powers
      t.string :evil_plan
      t.references :superhero, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
