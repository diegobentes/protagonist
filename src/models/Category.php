<?php
namespace Protagonist\Models;

class Category extends \models\Application
{
    static $has_many = [
        ['menus']
    ];

    static $table_name = "protagonist_categories";
}