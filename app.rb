require_relative 'menu.rb'

# menu1 = {
#     message: "Please select an option"
#     options: ['option 1','option 2','option 3']
# }

menu2 = {
    message: "Please select an option",
    options: ['option a','option b','option c']
}

default_menu = {
    message: "Please select an option",
    options: ['option 1','option 2','option 3']
}

menu_test = Menu.new(menu2)

menu_test.print

# generally have message like 'Please select and option'
# list of options
# user selects one of those

# I want to list this menu using my class

# please select an option
# 1) option 1
# 2) option 2
# 4) exit

# What kind of data structure does that look like: messages and options



