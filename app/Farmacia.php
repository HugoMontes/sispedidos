<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Farmacia extends Model
{
  protected $table='farmacias';
  protected $fillable=['nombre','direccion','telefono','duenio'];

  public function pedidos(){
    return $this->hasMany('App\Pedido');
  }
}
