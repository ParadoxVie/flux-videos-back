<?php

namespace projet\model;

class Notification extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'notfication';
    protected $primaryKey = 'id';
    public    $timestamps = false;
}