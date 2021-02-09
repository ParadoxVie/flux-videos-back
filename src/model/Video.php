<?php

namespace src\model;

class Video extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'video';
    protected $primaryKey = 'id';
    public    $timestamps = true;
}