class AddApiKeysTable < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.references :user, null: false
      t.references :build_service, null: false
      t.string :key, null: false, limit: 127
    end
  end
end
