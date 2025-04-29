/// @desc auto save

// Overwrite old file
if(file_exists(SAVE_FILE)) file_delete(SAVE_FILE);

// Create new save
var file = file_text_open_write(SAVE_FILE);
file_text_write_real(file, real(room));
file_text_close(file);


