<?php
class Config
{
    static $confArray;

    public static function read($name)
    {
        return self::$confArray[$name];
    }

    public static function write($name, $value)
    {
        self::$confArray[$name] = $value;
    }

}

// Database connection
Config::write('db.host',     '127.0.0.1');
Config::write('db.port',     '');
Config::write('db.basename', 'databasename');
Config::write('db.user',     'Username');
Config::write('db.password', 'Password');

// Database structure
Config::write('db.tables.login',    'UserLogin');
Config::write('db.tables.register', 'UserLogin');
Config::write('db.tables.insert',   'BlogPosts');
?>