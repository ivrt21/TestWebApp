class Project < ApplicationRecord
  PROJECTID = [
    ['Семья', 1],
    ['Работа', 2],
    ['Прочее', 3]
  ]
  
  has_many :todos
  accepts_nested_attributes_for :todos
end
