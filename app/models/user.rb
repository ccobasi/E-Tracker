class User < ApplicationRecord
    validates :name, presence: true, length: { in: 6..10 }, uniqueness: true
  has_one_attached :avatar
  has_many :groups, class_name: 'Group', foreign_key: 'user_id'
  has_many :tasks, class_name: 'Project', foreign_key: 'author_id'

  def ungrouped_projects_from_user(user_id)
    Project.includes(:author).where(group_id: nil).where(author_id: user_id)
end
