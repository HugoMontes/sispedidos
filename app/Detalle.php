<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detalle extends Model
{
  protected $table='detalles';
  protected $fillable=['cantidad','producto_id','pedido_id'];

  public function producto(){
    return $this->belongsTo('App\Producto');
  }

  public function pedido(){
    return $this->belongsTo('App\Pedido');
  }
}
