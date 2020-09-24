class CreateSwits < ActiveRecord::Migration[5.2]
  def change
    create_table :swits do |t|
      t.text :content
      t.timestamps
    end
  end
end
