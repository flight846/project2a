class User < ActiveRecord::Base
    has_many :posts
    has_secure_password
    validates :email, presence: true, uniqueness: true, :format => { :with => /@/ }
    validates_length_of :password, minimum: 8
end
