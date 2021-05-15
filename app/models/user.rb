class User < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :groups, dependent: :destroy

  has_one_attached :avatar, dependent: :destroy

  validates :email, presence: true
  validates :name, presence: true, uniqueness: true

  after_commit :add_default_cover, on: %i[create update]

  def ungrouped_projects_from_user()
    Project.includes(:author).where(group_id: nil).where(author_id: current_user.id)
  end

  private

  def add_default_cover
    return if avatar.attached?

    avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'user.png')),
                  filename: 'user.png', content_type: 'image/png')
  end
end
