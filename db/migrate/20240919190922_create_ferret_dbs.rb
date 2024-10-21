class CreateFerretDbs < ActiveRecord::Migration[7.1]
  def change
    create_table :ferret_dbs do |t|
      t.date :date_of_birth
      t.string :genotype
      t.string :identifiers
      t.string :location
      t.string :owner

      t.timestamps
    end
  end
end
