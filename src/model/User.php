<?php

namespace projet\model;

class User extends \Illuminate\Database\Eloquent\Model {
    protected $table = 'user';
    protected $primaryKey = 'id';
    public    $timestamps = true;

    public function videos()
    {
        return $this->hasMany(Video::class,'id_user');
    }
    
}