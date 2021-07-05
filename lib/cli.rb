
PROMPT = TTY::Prompt.new


class CommandLineInterface

    def clear
        puts "\e[H\e[2J" 
    end

    def response 
        PROMPT.select("What would you like to do?", %w(Create-User View-All-Users Add-Game View-Your-Library View-Game-List Update-Username Delete-Game))
    end

    

    
    def ascii

        clear
        
        

        puts "
              
                    ██╗   ██╗ █████╗ ██████╗  ██████╗ ██████╗ 
                    ██║   ██║██╔══██╗██╔══██╗██╔═══██╗██╔══██╗
                    ██║   ██║███████║██████╔╝██║   ██║██████╔╝
                    ╚██╗ ██╔╝██╔══██║██╔═══╝ ██║   ██║██╔══██╗
                     ╚████╔╝ ██║  ██║██║     ╚██████╔╝██║  ██║
                      ╚═══╝  ╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝

          "                             
        greet

    end



    def greet
        puts "Welcome to Vapor, which is definitely not a synonym for another game client."
    end


    def create_user
        puts "Please create a Username:"
        get_user_name = gets.chomp
        UserGame.create({
         user_id: User.find_or_create_by(user_name: get_user_name).id,
        })
        puts "Thank you #{get_user_name}, your account has been created."
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end
    end

    def view_all_user
        puts "\n\n"
        puts User.all.map{|user| user.user_name}
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end 
    end


    def add_game
        puts "Please enter your Username:"
        get_user_name = gets.chomp
        puts "What games would you like to add?"
        add_game = gets.chomp
        puts "What would you like the description to be?"
        add_description = gets.chomp
        UserGame.create({
         user_id: User.find_or_create_by(user_name: get_user_name).id,
         game_id: Game.find_or_create_by(title: add_game, description: add_description).id
        })
        puts "\n\n"
        puts "Thanks #{get_user_name}. You've added #{add_game} to your library, along with the description: #{add_description}"
        puts "\n\n"
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end
    end

    def view_game_list
        puts "\n\n"
        puts Game.all.map{|game| "#{game.title} ---- #{game.description}"}
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end
    end

    def view_user_library
        puts "Please enter your Username to view your library:"
        get_user_name = gets.chomp
        puts "\n\n"
        puts "Here is your current library:"
        puts User.find_by(user_name: get_user_name).games.map{|game| "#{game.title} ---- #{game.description}"}
        puts "\n\n"
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end
    end

    def name_update
        puts "First, enter old username:"
        get_user_name = gets.chomp
        puts "Now, enter your new username:"
        updated_user_name = gets.chomp
        puts "\n\n"
        puts "Your username is now: #{updated_user_name}"
        puts User.find_by(user_name: get_user_name).update(user_name:updated_user_name)
        puts "\n\n"
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end
    end

    def game_delete
        puts "Enter your Username:"
        get_user_name = gets.chomp
        puts "\n\n"
        puts "Here is your current library:"
        puts User.find_by(user_name: get_user_name).games.map{|game| "#{game.title} ---- #{game.description}"}
        puts "Delete the game of your choice:"
        delete_game = gets.chomp
        game_to_delete = 
            UserGame.find_by({ 
            user_id: User.find_by(user_name: get_user_name).id,
            game_id: Game.find_by(title: delete_game).id})
        game_to_delete.destroy
        puts "#{delete_game} has been deleted from your inventory"
        puts "\n\n"
        puts "Here is your updated library:"
        puts User.find_by(user_name: get_user_name).games.map{|game| "#{game.title} - #{game.description}"}
        puts "\n\n"
        puts "Return to main menu?(y/n)"
        @menu_return = gets.chomp
        if @menu_return == "y"
            ascii
        end
    end


end


