<?php
namespace Protagonist\Models;

class Tab extends \models\Application
{
    static $has_many = [
        ['sets']
    ];

    static $table_name = "protagonist_tabs";
}