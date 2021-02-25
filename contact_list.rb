#creat a list with people and names and numbers. 
# creat a add contact
# creata  remove contact
#creat a view all contacts

@names =[
    {key:1, name: "jayden", number: 4350000000},
    {key:2, name: "dallyn", number: 4351012211},
    {key:3, name: "sam", number: 8012222212}
]

@menus =[
    {key:1, name: "View All Contacts"},
    {key:2, name: "Add Contact"},
    {key:3, name: "Remove Contact"}
]

def display_options
    @menus.each_with_index do | menu, index |
        puts "#{menu[:key]}, #{menu[:name]}"
    end
end

def view_names
    @names.each_with_index do | name, index |
        puts "#{name[:key]}, #{name[:name]}, #{name[:number]} "
    end
end

def add_contact
    puts "what is the name?"
    new_name = gets.chomp
    puts "what is the number?"
    new_number = gets.chomp.to_i
    new_list = {
        key: @names.length + 1,
        name:new_name,
        number:new_number,
    }
    @names<< new_list
end

def delete_contact
    puts "what contact would you like to delete?"
    view_names
    delete_contact = gets.chomp.to_i
    @names.delete_at(delete_contact -1)
end

def display_menu
    puts "contact list"
    display_options
    choice = gets.chomp.to_i

    case choice
    when 1
        view_names
        display_menu
    when 2
        add_contact
        display_menu
    when 3 
        delete_contact
        display_menu
    else
        puts "bye bye buddy"
    end
end

display_menu