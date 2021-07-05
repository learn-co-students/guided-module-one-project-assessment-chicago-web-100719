require_relative '../config/environment'
require "tty-prompt"

cli = CommandLineInterface.new

    
    cli.ascii
    
    menu_response = cli.response

        if menu_response == "Create-User"
             cli.create_user
        elsif menu_response == "View-All-Users"
             cli.view_all_user
        elsif menu_response == "Add-Game"
             cli.add_game
        elsif menu_response == "View-Your-Library"
             cli.view_user_library
        elsif menu_response == "View-Game-List"
             cli.view_game_list
        elsif menu_response == "Update-Username"
             cli.name_update
        elsif menu_response == "Delete-Game"
             cli.game_delete 
        end
    





    

