<?php

namespace src\model;

class User extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'user';
    protected $primaryKey = 'id';
    public    $timestamps = true;
}