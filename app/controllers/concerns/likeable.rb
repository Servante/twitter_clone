module likeable
  extend ActiveSupport::Concern

  included do
    has_man :likes, as :likeable
  end

  def liked_by?(user)
    likes.where(user: user).any?
  end
end
