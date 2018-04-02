<?php

namespace App\Http\Controllers\backend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Farmacia;

class FarmaciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $farmacias=Farmacia::orderBy('id','DESC')->paginate(20);
      return view('backend.farmacia.index')->with('farmacias', $farmacias);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.farmacia.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $farmacia=new Farmacia($request->all());
        $farmacia->save();
        flash('Se ha guardado el cliente "'.$farmacia->nombre.'" exitosamente.')->success();
        return redirect()->route('backend.cliente.index');
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
        $farmacia=Farmacia::find($id);
        return view('backend.farmacia.edit')->with('farmacia',$farmacia);
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
        $farmacia=Farmacia::find($id);
        $farmacia->fill($request->all());
        $farmacia->save();
        flash('Se ha editado el cliente "'.$farmacia->nombre.'" exitosamente.')->success();
        return redirect()->route('backend.cliente.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $farmacia=Farmacia::find($id);
        $farmacia->delete();
        flash('Se ha eliminado al cliente "'.$farmacia->nombre.'" exitosamente.')->success();
        return redirect()->route('backend.cliente.index');
    }
}
