class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :articles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :timeoutable

  mount_uploader :avatar, AvatarUploader
  before_destroy :clean_s3
  private
    def clean_s3
      avatar.remove!
      avatar.thumb.remove!
    rescue Excon::Errors::Error => error
      puts "Something gone wrong"
      false
    end
end
