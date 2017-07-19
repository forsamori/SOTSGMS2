var file;
gameState = "playing";
if (file_exists(working_directory + ("\\HighscoreBoard.txt")))
{
    show_debug_message("it exists");
    file = file_text_open_read(working_directory + ("\\HighscoreBoard.txt"));
    currentHscore = file_text_read_real(file);
    file_text_close(file);
}
else
{
    currentHscore = 0;
}

