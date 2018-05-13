class Article < ApplicationRecord
  belongs_to :user, optional: true
  validates :user_id, presence: true
  validates :title, :body, presence: true
  validates :title, length: { in: 1..32 }

  acts_as_taggable

  def self.find(input)
    if input.is_a?(Integer)
      super
    else
      find_by_id(input)
    end
  end

  def to_param
    id
  end
end
