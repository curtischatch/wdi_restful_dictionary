class Entry < ApplicationRecord
  validates :word, presence: true
  validates :language, presence: true
  validates :definition, presence: true
end
