class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true # is the same as validates{:email, presence:true}
end
