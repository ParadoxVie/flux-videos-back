<?php

namespace projet\model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Stream extends \Illuminate\Database\Eloquent\Model {
    use SoftDeletes;

    protected $table = 'stream';
    protected $primaryKey = 'id';
    public    $timestamps = true;
    protected $fillable = ['deleted_at'];
    public $incrementing = false;

}