User.destroy_all

u1 = User.create :first_name => "bae" , :last_name => "jongin", :password => "chicken" , :password_confirmation => "chicken" , :email => "au.jib0610@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"


Area.destroy_all

a1 = Area.create :name => "Front"
a2 = Area.create :name => "Middle"
a3 = Area.create :name => "Back-end"

Language.destroy_all

l1 = Language.create :name => "HTML"
l2 = Language.create :name => "Javascript"
l3 = Language.create :name => "CSS"
l4 = Language.create :name => "Ruby"
l5 = Language.create :name => "Rails"
l6 = Language.create :name => "SQLite3"
l7 = Language.create :name => "Postgress"

a1.languages << l1 << l2 << l3
a2.languages << l4 <<  l5
a3.languages << l6 << l7
