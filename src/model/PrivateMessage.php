<?php

namespace projet\model;

class PrivateMessage extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'private_message';
    protected $primaryKey = 'id';
    public    $timestamps = true;

    public function sendee()
    {
        return $this->hasOne(User::class,'id','id_sendee');
    }

    public function sender()
    {
        return $this->hasOne(User::class,'id','id_sender');
    }
}