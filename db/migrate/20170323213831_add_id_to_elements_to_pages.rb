class AddIdToElementsToPages < ActiveRecord::Migration
  def up
    add_column :alchemy_elements_alchemy_pages, :id, :integer
    # reload table def?
    record_index = 1
    Alchemy::ElementToPage.find_each do |element_to_page|
      element_to_page.id = record_index
      record_index += 1
    end
    update_column :alchemy_elements_alchemy_pages, :id, :primary_key
  end

  def down
    remove_column :alchemy_elements_alchemy_pages, :id
  end
end
