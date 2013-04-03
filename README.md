#Baka-neko


Minimalistic independent PHP CMS created for programmers. The CMS is meant to only include the most important functions to connect to a DB, to be secure and easy to use. The name is derived from Japanese and means "Foolish cat".


## Getting started ##
*It's suggested that you use something like Twig to handle templates. Baka neko is ***NOT*** made to handle design.*

As a note, file names that start with an underscore (_) should be hidden and not accessible by the public. You decide where it should be placed yourself and how to handle it, there is no good system to switch the file path right now, you have to change it in your files yourself.

### Preparing the server ###

1. Using MySQL (or your SQL of choice), insert db.sql (edit it as needed)
2. Edit _config (lays in /php/) according to your DB setup

***Congratulations!*** It *should* work, there's examples of a login (login.php) and update (updatePosts.php) using ajax in the /php/ and root folder.

##Support##
###_DB class###
** Important: ** Baka-neko does not escape HTML, you have to add it yourself.
* Uses PDO, so it's easy to switch between different databases.
* The class that handles connections (core) uses a singleton pattern so it's just included once
* Uses prepared statements with dynamic input (look API)
* Easy to access config file (_config.php)
* Proper hashing (Implemented pbkdf2 in PHP with SHA256, credits in file)




##API##
###/php/ _DB.php ###
Initiate with new i.e `$thedatabase = new DB();`

***Login***  
*Returns:* Boolean `true or false`  
*Optional parameters:* `$table` (returns to default from _config.php)  
*Usage:* `->login($user, $pass, $table)`  
*Example file:* ***Login.php***

***Insert***  
Returns: String `true or errorCode` (might change to array like in dosql)  
Optional parameters: `$table` (returns to default from _config.php)  
Note: **object to change.**  
Usage: `->insert($array, $table)`  
*Example file:* ***updatePosts.php***

***dosql***  
*Returns:* Array `{status: true or false, result: false (on true) or errorCode}`  
*Optional parameters:* `$table` (returns to default from _config.php)  
*Note:* **Not secure against SQL injections, don't use on user inputs.**  
Usage: `->dosql($query)`   
*Example file:* ***index.php***

### /static/ Form.js ###

**No API yet!** Currently porting to class (form-class.js)
