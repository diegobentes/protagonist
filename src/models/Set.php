<?php
namespace Protagonist\Models;

class Set extends \models\Application
{
    static $belongs_to = [
        ["module"],
        ["menu"],
        ["tab"],
    ];

    static $table_name = "protagonist_sets";
}