class CreateThreatMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :threat_matches do |t|
      t.string :threat_type
      t.string :platform_type
      t.string :caching
      t.references :domain, foreign_key: true

      t.timestamps
    end
  end
end
