<?php

class Protagonist{

    private $connection;

    public $getResponseAfterDescription = true;

    private static $separator = "\n---------------------------------------------------------------------------------\n";

    public function __construct()
    {
        $this->connection = 'mysql'
            . ' --host=' . "localhost"
            . ' --user=' . "root"
            //. ' --password=' . ""
            . ' --database=' . "dbteste"
            . ' --execute="SOURCE ' . __DIR__
        ;
    }

    private static function instance(){
        return new self;
    }

    public function description(){
        return "
          ___               _                                _        _   
         | _ \  _ _   ___  | |_   __ _   __ _   ___   _ _   (_)  ___ | |_ 
         |  _/ | '_| / _ \ |  _| / _` | / _` | / _ \ | ' \  | | (_-< |  _|
         |_|   |_|   \___/  \__| \__,_| \__, | \___/ |_||_| |_| /__/  \__|
                                        |___/                             
            
            Esse e um modulo para criacao de menus para o UPhp.
            Antes de mais nada precisamos lhe informar que teremos
            que criar algumas tabelas em seu banco de dados default,
            sao elas:
            
            - Abas
            - Modulos
            - Menus
            - Conjuntos
            - Categorias
            
            Cada uma dessas tabelas serao criadas com o prefixo PROTAGONIST.
            Voce permite que os scripts de inicializacao
            sejam executados? [Y/n]: ";
    }

    public static function start($response = null){
        if ($response === "Y" || $response === "y") {
            self::createTables();
        } else {
            echo self::$separator;
            echo "Script not executed";
        }

    }

    private static function createTables(){
        echo self::$separator;
        echo "Criando tabelas ...";
        $instance = self::instance();
        shell_exec($instance->connection . '/protagonist.sql"');
    }

}