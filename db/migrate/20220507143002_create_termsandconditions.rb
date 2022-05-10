class CreateTermsandconditions < ActiveRecord::Migration[6.1]
  def change
    create_table :termsandconditions do |t|
      t.text :description

      t.timestamps
    end
  end
end
