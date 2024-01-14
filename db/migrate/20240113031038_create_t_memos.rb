class CreateTMemos < ActiveRecord::Migration[7.1]
  def change
    create_table :t_memos do |t|
      t.string :memo

      t.timestamps
    end
  end
end
