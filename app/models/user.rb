class User < ActiveRecord::Base
has_many :salons,  dependent: :destroy
has_one :client, dependent: :destroy

# validates :password, :length => { :minimum => 5,
#     :too_short => "%{count} characters is the minimum allowed" }

end
