///@arg path
///@usage var myData = load_json("/myDataFile.json");

var _path = argument0;

var theJsonFile = file_text_open_read(working_directory + _path);

var theData = "";
while (!file_text_eof(theJsonFile))
{
   
	theData += file_text_read_string(theJsonFile);

    file_text_readln(theJsonFile);
	
}
file_text_close(theJsonFile);

if (!is_undefined(theData))
{
    var theJsonMap = json_decode( theData );
    show_debug_message("read from file");
	return theJsonMap;
}
else
    exit;