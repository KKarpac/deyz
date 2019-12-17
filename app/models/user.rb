class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :moments
  has_many :events
  has_many :attendees

  mount_uploader :profile_banner, PhotoUploader
  mount_uploader :profile_avatar, PhotoUploader

  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id

  def spotify_top_1_uid
    spotify_top_1[/[^:]*$/]
  end

  def spotify_top_2_uid
    spotify_top_2[/[^:]*$/]
  end

  def spotify_top_3_uid
    spotify_top_3[/[^:]*$/]
  end

  def spotify_top_4_uid
    spotify_top_4[/[^:]*$/]
  end

  def spotify_top_5_uid
    spotify_top_5[/[^:]*$/]
  end

end
