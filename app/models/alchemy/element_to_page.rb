module Alchemy
  class ElementToPage < ActiveRecord::Base
    def self.table_name
      [Element.table_name, Page.table_name].join('_')
    end

    belongs_to :element, class_name: 'Alchemy::Element'
    belongs_to :page, class_name: 'Alchemy::Page'
  end
end
