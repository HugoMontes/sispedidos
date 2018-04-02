<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
  protected $table='productos';
  protected $fillable=['nombre','precio'];

  public function detalles(){
    return $this->hasMany('App\Detalle');
  }
}
