class CreateDocumentaryfilms < ActiveRecord::Migration[7.2]
  def change
    create_table :documentaryfilms do |t|
      t.string :title

      t.timestamps
    end
  end
end
