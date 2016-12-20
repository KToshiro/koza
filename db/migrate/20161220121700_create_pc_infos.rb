class CreatePcInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :pc_infos do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.string :url

      t.timestamps
    end
  end
end
