<?php

namespace projet\model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Stream extends \Illuminate\Database\Eloquent\Model {
    use SoftDeletes;

    protected $table = 'stream';
    protected $primaryKey = 'id';
    public    $timestamps = true;
    protected $hidden = ['deleted_at','updated_at'];
    public $incrementing = false;

    public function creator()
    {
        return $this->belongsTo(User::class,'id_user')->select(array('id','username','mail'));
    }
}