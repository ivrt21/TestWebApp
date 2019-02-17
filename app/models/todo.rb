class Todo < ApplicationRecord
  belongs_to :project, required: false
end
