<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Pedido;
use App\Farmacia;
use App\Producto;
use App\Detalle;

class PedidoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pedidos=Pedido::orderBy('id','DESC')->paginate(5);
        $pedidos->each(function($pedidos){
          $pedidos->farmacia;
        });
        return view('backend.pedido.index')->with('pedidos', $pedidos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $farmacias=Farmacia::orderBy('nombre','ASC')->lists('nombre','id');
        return view('backend.pedido.create')
          ->with('farmacias',$farmacias);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $pedido=new Pedido($request->all());
      $pedido->user_id = 1;
      $pedido->save();
      // flash('Se ha guardado el pedido exitosamente.')->success();
      $productos = Producto::orderBy('nombre','ASC')->lists('nombre','id');
      $detalles = Detalle::where('pedido_id', $pedido->id)
                            ->orderBy('id','ASC')
                            ->get();
      $detalles->each(function($detalle){
        $detalle->producto;
      });
      // return redirect()->route('backend.pedido.index');
      return view('backend.pedido.create_detalle')
        ->with('productos',$productos)
        ->with('detalles',$detalles)
        ->with('pedido_id',$pedido->id);
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
        $pedido=Pedido::find($id);
        $farmacias=Farmacia::orderBy('nombre','ASC')->lists('nombre','id');
        return view('backend.pedido.edit')
          ->with('pedido',$pedido)
          ->with('farmacias',$farmacias);
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
        $pedido=Pedido::find($id);
        $pedido->fill($request->all());
        $pedido->save();
        // flash('Se ha editado el pedido "'.$pedido->nombre.'" exitosamente.')->success();
        $productos = Producto::orderBy('nombre','ASC')->lists('nombre','id');
        $detalles = Detalle::where('pedido_id', $pedido->id)
                              ->orderBy('id','ASC')
                              ->get();
        $detalles->each(function($detalle){
          $detalle->producto;
        });
        // return redirect()->route('backend.pedido.index');
        return view('backend.pedido.create_detalle')
          ->with('productos',$productos)
          ->with('detalles',$detalles)
          ->with('pedido_id',$pedido->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pedido=Pedido::find($id);
        $pedido->delete();
        flash('Se ha eliminado el pedido exitosamente.')->success();
        return redirect()->route('backend.pedido.index');
    }
}
