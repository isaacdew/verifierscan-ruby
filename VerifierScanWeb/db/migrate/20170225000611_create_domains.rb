class CreateDomains < ActiveRecord::Migration[5.0]
  def change
    create_table :domains do |t|
      t.string :root
      t.string :operation_location
      t.string :hosting
      t.decimal :hosting_score
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
