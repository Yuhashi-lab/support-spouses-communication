class Wife < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  has_one :family
  has_many :question_answers, :as => :user
  has_many :talks,            :as => :user
  has_many :must_todos,       :as => :user
  has_many :want_todos,       :as => :user
  has_many :schedules,        :as => :user
  has_many :albums,           :as => :user

  after_create :update_access_token!

  validates :email, presence: true
  validates :name, presence: true
  validates :birthday, presence: true

  def update_access_token!
    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end

end
