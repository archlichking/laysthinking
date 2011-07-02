class User < ActiveRecord::Base
  has_many :microposts

  attr_accessor :name, :email, :nick, :password

  def initialize(attributes)
    @name = attributes[:name]
    @email = attributes[:email]
    @nick = attributes[:nick]
    @password = attributes[:password]
  end

end
