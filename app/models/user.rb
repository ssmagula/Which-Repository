class User < ActiveRecord::Base
    has_many :microposts
    validates_presence_of :name, :on => :create, :message => "Everyone needs a name!"
    validates_presence_of :email, :on => :create, :message => "Please enter an email address"
    validates_uniqueness_of :name, :on => :create, :message => "already being used. Please choose another."
    validates_uniqueness_of :email, :on => :create, :message => "already being used. Please choose another."
end
