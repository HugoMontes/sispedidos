<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Detalle;
use App\Producto;

class DetalleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $detalle=new Detalle($request->all());
      $detalle->save();
      $productos = Producto::orderBy('nombre','ASC')->lists('nombre','id');
      $detalles = Detalle::where('pedido_id', $detalle->pedido_id)
                            ->orderBy('id','ASC')
                            ->get();
      flash('Se adiciono el producto al pedido exitosamente.')->success();
      return view('backend.pedido.create_detalle')
        ->with('productos',$productos)
        ->with('detalles',$detalles)
        ->with('pedido_id',$detalle->pedido_id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $detalle=Detalle::find($id);
      $detalle->delete();
      $productos = Producto::orderBy('nombre','ASC')->lists('nombre','id');
      $detalles = Detalle::where('pedido_id', $detalle->pedido_id)
                            ->orderBy('id','ASC')
                            ->get();
      flash('Se ha eliminado exitosamente el producto a pedir.')->success();
      return view('backend.pedido.create_detalle')
        ->with('productos',$productos)
        ->with('detalles',$detalles)
        ->with('pedido_id',$detalle->pedido_id);
    }
}
