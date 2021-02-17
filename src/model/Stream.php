<?php

namespace projet\model;

class Stream extends \Illuminate\Database\Eloquent\Model {
    public $incrementing = false;
    protected $table = 'stream';
    protected $primaryKey = 'id';
    public    $timestamps = true;
}