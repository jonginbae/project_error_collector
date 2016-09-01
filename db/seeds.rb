User.destroy_all

u1 = User.create :first_name => "JongIn" , :last_name => "bae", :password => "chicken" , :password_confirmation => "chicken" , :email => "au.jib0610@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"
u2 = User.create :first_name => "Andrew" , :last_name => "Knight", :password => "chicken" , :password_confirmation => "chicken" , :email => "test2@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"
u3 = User.create :first_name => "Arpan" , :last_name => "Bhalla", :password => "chicken" , :password_confirmation => "chicken" , :email => "test3@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"
u4 = User.create :first_name => "Howard" , :last_name => "Mann", :password => "" , :password_confirmation => "chicken" , :email => "test4@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"
u5 = User.create :first_name => "Lucas" , :last_name => "Viela", :password => "chicken" , :password_confirmation => "chicken" , :email => "test5@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"
u6 = User.create :first_name => "Peter" , :last_name => "Fagan", :password => "chicken" , :password_confirmation => "chicken" , :email => "test6@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"
u7 = User.create :first_name => "Priyanka" , :last_name => "Kumbhar", :password => "chicken" , :password_confirmation => "chicken" , :email => "test7@gmail.com" , :github => "https://github.com/jonginbae" , :phone => "111111111" , :authority => "user"

Area.destroy_all

a1 = Area.create :name => "Front"
a2 = Area.create :name => "Middle"
a3 = Area.create :name => "Back-end"

Language.destroy_all

l1 = Language.create :name => "HTML"
l2 = Language.create :name => "Angular"
l3 = Language.create :name => "Javascript"
l4 = Language.create :name => "jQuery"
l5 = Language.create :name => "CSS"
l6 = Language.create :name => "Ruby"
l7 = Language.create :name => "Rails"
l8 = Language.create :name => "SQLite3"
l9 = Language.create :name => "Postgress"

a1.languages << l1 << l2 << l3 << l4 <<l5
a2.languages << l7 <<  l6
a3.languages << l8 << l9
