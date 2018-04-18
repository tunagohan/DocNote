class Article < ApplicationRecord
  belongs_to :user, optional: true
  validates :user_id, presence: true

  validates :title, :body, presence: true

  acts_as_taggable

  mount_uploader :image, ImageUploader
  before_destroy :clean_s3

  def self.find(input)
    if input.is_a?(Integer)
      super
    else
      find_by_title(input)
    end
  end

  def to_param
    title
  end

  private
    def clean_s3
      image.remove!
      image.thumb.remove!
    rescue Excon::Errors::Error => error
      puts "Something gone wrong"
      false
    end
end
