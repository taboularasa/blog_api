class Post < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, uniqueness: true
  validate :blue_free_title
  validate :red_free_title

  private

  def blue_free_title
    return unless title && title.downcase.include?('blue')
    errors.add(:title, 'can not have blue')
  end

  def red_free_title
    return unless title && title.downcase.include?('red')
    errors.add(:title, 'can not have red')
  end
end
