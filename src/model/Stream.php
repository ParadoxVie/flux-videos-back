<?php

namespace projet\model;

class Stream extends \Illuminate\Database\Eloquent\Model
{
    protected $table = 'stream';
    protected $primaryKey = 'id';
    public    $timestamps = true;
    public $incrementing = false;
}
