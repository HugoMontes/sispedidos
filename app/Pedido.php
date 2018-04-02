<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
  protected $table='pedidos';
  protected $fillable=['comentario','farmacia_id'];

  public function user(){
    return $this->belongsTo('App\User');
  }

  public function farmacia(){
    return $this->belongsTo('App\Farmacia');
  }

  public function detalles(){
    return $this->hasMany('App\Detalle');
  }  
}
