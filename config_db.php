<?php
class DB extends DBmysql {
   public $dbhost = 'mariadb';
   public $dbuser = 'glpi';
   public $dbpassword = 'glpip2m2';
   public $dbdefault = 'glpi';
   public $use_utf8mb4 = true;
   public $allow_myisam = false;
   public $allow_datetime = false;
   public $allow_signed_keys = false;
}
