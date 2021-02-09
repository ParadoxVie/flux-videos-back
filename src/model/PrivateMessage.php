<?php

namespace projet\model;

class PrivateMessage extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'private_message';
    protected $primaryKey = 'id';
    public    $timestamps = true;
}