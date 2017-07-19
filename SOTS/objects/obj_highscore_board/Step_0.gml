if (gameState == "win")
{
    show_debug_message(currentHscore);
    gameState = "finished";
    if (obj_seagull.score > currentHscore)
    {
        currentHscore = obj_seagull.score;
        file = file_text_open_write(working_directory + "\\HighscoreBoard.txt");
        file_text_write_real(file, obj_seagull.score);
        file_text_close(file);
        show_debug_message("file_written_to");
    }
    
    room_goto(rm_ending)
    
}

