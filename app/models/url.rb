class Url < ApplicationRecord
  after_validation :shorten

  validates :long_url, format: { with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, on: :create, :multiline => true }
  validates :long_url, :presence => true
  validates :long_url, :length => { :minimum => 2 }
  validates :long_url, :uniqueness => { :message => 'You already shortened this url'}

  def shorten
    self.short_url = "#{SecureRandom.uuid.split('-').first}"
  end

end
