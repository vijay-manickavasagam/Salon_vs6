class Salon < ActiveRecord::Base
has_many :stylists
belongs_to :user
has_many :services, dependent: :destroy
has_many :appointments, dependent: :destroy
has_many :clients, :through => :appointments
end
