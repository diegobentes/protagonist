<?php
namespace Protagonist\Models;

class Module extends Application
{
    static $has_many = [
        ['sets'],
        ['menus', 'through' => 'sets']
    ];
}