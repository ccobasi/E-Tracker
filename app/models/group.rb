class Group < ApplicationRecord
  belongs_to :user

  has_many :groups_projects, dependent: :destroy
  has_many :projects, through: :groups_projects, dependent: :destroy
  has_one_attached :icon, dependent: :destroy

  validates :name, presence: true, length: { minimum: 4, maximum: 15 }

  after_create :add_default_cover

  private

  def add_default_cover
    return if icon.attached?

    icon.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'bkcode7.jpg')),
                filename: 'bkcode7.jpg', content_type: 'image/jpg')
  end
end
