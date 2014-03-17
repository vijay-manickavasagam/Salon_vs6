
#Users

User.destroy_all
Innitial_users = [{:id => 1, :login => "Joana", :password => "joana", :profile => "client"},
                          {:id => 2, :login => "Ugly", :password => "ugly", :profile => "client"},
                          {:id => 3, :login => "Marge", :password => "marge", :profile => "client"},
                          {:id => 4, :login => "Slash", :password => "slash", :profile => "client"},
                          {:id => 5, :login => "John", :password => "john", :profile => "client"},
                          {:id => 6, :login => "Hairstyle", :password => "hairstyle", :profile => "salon"},
                          {:id => 7, :login => "Hairdresser", :password => "hairdresser", :profile => "salon"},
                          {:id => 10, :login => "70Hair", :password => "70hair", :profile => "client"}]

Innitial_users.each do |user|
  u = User.new
  u.id = user[:id]
  u.login = user[:login]
  u.password = user[:password]
  u.profile = user[:profile]
  u.save
end

# Clients

Client.destroy_all

Innitial_clients =
[{:user_id => "1",
  :image_url => "http://automobilein.com/wp-content/uploads/2014/02/Image-Of-Beautiful-Girl.jpg",
  :first_name => "Joana",
  :last_name => "O'Connor",
  :sex => "female",
  :date_of_birth => "1985/05/10",
  :email => "joana.gmail.com",
  :phone => "2245556789"},
{:user_id => "2",
  :image_url => "http://www.thestudentroom.co.uk/attachment.php?attachmentid=243659&d=1379113316",
  :first_name => "Ugly",
  :last_name => "Betty",
  :sex => "female",
  :date_of_birth => "1982/10/01",
  :email => "Uglyb.gmail.com",
  :phone => "47657756789"},
  {:user_id => "3",
  :image_url => "http://th05.deviantart.net/fs70/PRE/f/2010/276/4/8/marge_by_jakebcha-d301d8o.jpg",
  :first_name => "Marge",
  :last_name => "Simpson",
  :sex => "female",
  :date_of_birth => "1989/12/17",
  :email => "asklisa.gmail.com",
  :phone => "9996660000"},
    {:user_id => "4",
  :image_url => "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSYkm-YY-_X2y7udPX_qR18pigxZ2bieT3d2AGznf7FiOTOI3n4",
  :first_name => "Slash",
  :last_name => "too_good_for_a_last_name",
  :sex => "male",
  :date_of_birth => "1965/07/23",
  :email => "slash.gmail.com",
  :phone => "998787650"},
     {:user_id => "5",
  :image_url => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSazWqviP9hQtM0nbLc3z0iI2VCk9RmnYtUYS8uI4GDAUDdf42E",
  :first_name => "John",
  :last_name => "Malkovich",
  :sex => "male",
  :date_of_birth => "1965/07/23",
  :email => "slash.gmail.com",
  :phone => "998787650"}]

Innitial_clients.each do |client|
  p = Client.new
  p.user_id = client[:user_id]
  p.image_url = client[:image_url]
  p.first_name= client[:first_name]
  p.last_name = client[:last_name]
  p.sex = client[:sex]
  p.date_of_birth = client[:date_of_birth]
  p.email = client[:email]
  p.phone = client[:phone]
  p.save
end

# Salon

Salon.destroy_all
Innitial_salons =
[{:user_id => 6, :salon_name => "Style Evanston", :contact_name=>"Mariana" ,
  :phone => "2234456789", :address => "112 Chicago Avenue, Evanston, Il",
  :email => "styleevanston@hairstyle.com"},
{:user_id => 6, :salon_name => "Style Chicago", :contact_name=>"Julie" ,
  :phone => "2234456788", :address => "99 Magnificient Mile, Chicago, Il",
  :email => "stylechicago@hairstyle.com"},
  {:user_id => 6, :salon_name => "Style New York", :contact_name=>"Jenny" ,
  :phone => "2234456710", :address => "100 Broadway, New York, NY",
  :email => "stylenewyork@hairstyle.com"},
  {:user_id => 7, :salon_name => "Hairdresser", :contact_name=>"Lauren" ,
  :phone => "99987689", :address => "90 Davis St, Evanston, Il",
  :email => "Hairdresser@gmail.com"},
  {:user_id => 8, :salon_name => "70Seatle", :contact_name=>"Claudete" ,
  :phone => "9990987654", :address => "112 Seatle Ave, Seatle, WA",
  :email => "70seatle@70hair.com"},
  {:user_id => 8, :salon_name => "70LA", :contact_name=>"Ana" ,
  :phone => "6789876654", :address => "980 SF Avenue, San Francisco, CA",
  :email => "70LA@70hair.com"}]

Innitial_salons.each do |salon|
  s = Salon.new
  s.user_id = salon[:user_id]
  s.salon_name= salon[:salon_name]
  s.contact_name = salon[:contact_name]
  s.phone = salon[:phone]
  s.address = salon[:address]
  s.email = salon[:email]
  s.save
end

# Stylist

Stylist.destroy_all
Innitial_stylist =
[{:salon_id => "1", :first_name =>"Maria", :last_name => "Thompson",
 :sex =>"female", :date_of_birth =>"2000/11/15",
 :phone =>"6678909876", :email => "maria@styleevanston.com",
 :image_url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTLk1jncufZIj3JMYyYtaPpcVPnmUIgNGXYWZ-rZt6kHKouDEONLw"},
 {:salon_id => "1", :first_name =>"Mason", :last_name => "Anderson",
 :sex =>"female", :date_of_birth =>"2000/04/11",
 :phone =>"6678909876", :email => "mason@styleevanston.com",
 :image_url => "http://www.cocoaandeves.co.uk/image/data/8005576-beautiful-hairdresser-with-client-isolated-over-white.jpg"},
 {:salon_id => "2", :first_name =>"Claudia", :last_name => "Sampaio",
 :sex =>"female", :date_of_birth =>"2000/11/15",
 :phone =>"6678909876", :email => "maria@stylechicago.com",
 :image_url => "http://cruelladekill.files.wordpress.com/2013/02/10677723-female-hairdresser-working-with-hair-dryer.jpg"},
 {:salon_id => "2", :first_name =>"Ava", :last_name => "Jackson",
 :sex =>"female", :date_of_birth =>"1985/10/15",
 :phone =>"6678909876", :email => "ava@stylechicago.com",
 :image_url => "http://hscweb3.hsc.usf.edu/health/now/wp-content/Hairdresser-story-jump3.jpg"},
 {:salon_id => "3", :first_name =>"Julia", :last_name => "Santos",
 :sex =>"female", :date_of_birth =>"1968/04/15",
 :phone =>"6678999086", :email => "julia@styleny.com",
 :image_url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTLk1jncufZIj3JMYyYtaPpcVPnmUIgNGXYWZ-rZt6kHKouDEONLw"},
 {:salon_id => "4", :first_name =>"Nanzoni", :last_name => "Takamura",
 :sex =>"female", :date_of_birth =>"1984/11/15",
 :phone =>"6678909876", :email => "nanzoni@hairdresser.com",
 :image_url => "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRcrh9XU_Zw9ag6V-2LhHNt-1XpX3l7vmY4qMKPnaQsU95-fElMQA"},
 {:salon_id => "5", :first_name =>"Ana", :last_name => "Paula",
 :sex =>"female", :date_of_birth =>"1981/12/30",
 :phone =>"2249993687", :email => "ana@70seatle.com",
 :image_url => "http://us.123rf.com/400wm/400/400/jackf/jackf1109/jackf110900777/10677719-female-hairdresser-working-with-long-haired-girl.jpg"},
 {:salon_id => "6", :first_name =>"Mark", :last_name => "Lewis",
 :sex =>"male", :date_of_birth =>"1981/5/30",
 :phone =>"2249993698", :email => "mark@70sf.com",
 :image_url => "http://wwwdelivery.superstock.com/WI/223/4156/PreviewComp/SuperStock_4156R-3389.jpg"}
]

Innitial_stylist.each do |stylist|
  t = Stylist.new
  t.salon_id = stylist[:salon_id]
  t.first_name= stylist[:first_name]
  t.last_name = stylist[:last_name]
  t.sex = stylist[:sex]
  t.date_of_birth = stylist[:date_of_birth]
  t.phone = stylist[:phone]
  t.email = stylist[:email]
  t.image_url = stylist[:image_url]
  t.save
end

# Service

Service.destroy_all

["Hair cut", "Hair paint", "Curling", "Smoothening"].each do |service|
  e = Service.new
  e.salon_id = "1"
  e.service_name = service
  e.service_description = "awesome services only at Style Hair"
  e.price = "$20"
  e.save
end

["Hair cut", "Hair paint", "Curling", "Smoothening"].each do |service|
  z = Service.new
  z.salon_id = "2"
  z.service_name = service
  z.service_description = "awesome services only at Style Hair"
  z.price = "$20"
  z.save
end

["Hair cut", "Hair paint", "Curling", "Smoothening"].each do |service|
  x = Service.new
  x.salon_id = "3"
  x.service_name = service
  x.service_description = "awesome services only at Style Hair"
  x.price = "$20"
  x.save
end

["Hair cut", "Hair paint", "Curling", "Smoothening"].each do |service|
  y = Service.new
  y.salon_id = "4"
  y.service_name = service
  y.service_description = "Come to Hairdressers"
  y.price = "$15"
  y.save
end

["Hair cut", "Hair paint", "Curling", "Smoothening"].each do |service|
  w = Service.new
  w.salon_id = "5"
  w.service_name = service
  w.service_description = "Prices from the 70's"
  w.price = "$10"
  w.save
end

["Hair cut", "Hair paint", "Curling", "Smoothening"].each do |service|
  v = Service.new
  v.salon_id = "6"
  v.service_name = service
  v.service_description = "Prices from the 70's"
  v.price = "$10"
  v.save
end

