<?php
namespace Protagonist\Models;

class Menu extends \models\Application
{
    static $has_many = [
        ['sets'],
        ['modules', 'through' => 'sets']
    ];

    static $belongs_to = [
        ["category"]
    ];

    static $table_name = "protagonist_menus";
}