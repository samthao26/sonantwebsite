class CreateUserapplies < ActiveRecord::Migration[7.1]
  def change
    create_table 'userapplies' do |t|
      t.string :name
      t.string :email
      t.file :cv

      t.timestamps
    end
  end
end
