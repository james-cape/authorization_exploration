class User < ApplicationRecord
  validates_presence_of :name, :email, :password

  def self.authenticate(email, password)
    User.find_by(email: email, password: password)
  end
end
