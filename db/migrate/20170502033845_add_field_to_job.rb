class AddFieldToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_field, :string
  end
end
