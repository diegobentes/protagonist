<?php

class Protagonist{

    private static $connection;

    public function __construct()
    {
        self::$connection = 'mysql'
            . ' --host=' . "localhost"
            . ' --user=' . "root"
            //. ' --password=' . ""
            . ' --database=' . "dbteste"
            . ' --execute="SOURCE ' . __DIR__
        ;
    }

    public static function start(){
        shell_exec(self::$connection . '/protagonist.sql"');
    }

}

Protagonist::start();