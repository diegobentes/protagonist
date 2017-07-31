<?php
namespace Protagonist\Models;

class Module extends \models\Application
{
    static $has_many = [
        ['sets'],
        ['menus', 'through' => 'sets']
    ];

    static $table_name = "protagonist_modules";
}