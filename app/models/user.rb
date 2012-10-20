class User < ActiveRecord::Base
  attr_accessible :last_login_time, :login_num, :name, :weiboid
end
