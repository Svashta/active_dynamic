module DynamicAttributes
  class CustomAttribute < ActiveRecord::Base
    belongs_to :customizable, polymorphic: true

    validates :name, presence: true
    validates :datatype, presence: true, inclusion: DataType::All
  end
end
