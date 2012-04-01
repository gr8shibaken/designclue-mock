#encoding: utf-8
class User < ActiveRecord::Base
  validates :username,
    :presence => {:message=>'が空欄です'}
  validates :email,
    :presence => {:message=>'が空欄です'}
  validates :password,
    :presence => {:message=>'が空欄です'}
end
