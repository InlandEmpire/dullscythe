class Post < ApplicationRecord
  # says each post can have one attached image, and gives you methods like post.banner.
  has_one_attached :banner
  # says each post has a rich text body, stored separately, and gives you post.body.
  has_rich_text :body

  # validates registers a check on the model. When you try to save a record, Rails runs every registered check first. If any fail, the record is not saved and Rails records error messages on it instead.
  validates :title, :published_at, presence: true

  # because the class is named Post and inherits from ApplicationRecord, Rails connects it to the posts table. The columns (title, published_at) become methods automatically, so post.title works with no extra code.
end