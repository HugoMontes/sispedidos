@extends('backend.layouts.main')
@section('title', 'Nuevo Pedido')
@section('content')
  {!! Form::open(['route'=>'backend.pedido.store']) !!}
    <div class="form-group">
      {!! Form::label('farmacia_id', 'Farmacia') !!}
      {!! Form::select('farmacia_id', $farmacias, null, ['class'=>'form-control', 'placeholder'=>'Seleccione un cliente', 'required']) !!}
    </div>

    <!--div class="form-inline">
      <div class="form-group">
        <label for="producto_id">Producto</label>
        <select id="producto_id" class="form-control" placeholder="Seleccione un producto">
          <option value="1">Producto 1</option>
          <option value="2">Producto 2</option>
          <option value="3">Producto 3</option>
        </select>
      </div>
      <div class="form-group">
        <label for="cantidad">Cantidad</label>
        <input type="text" id="camtodad" class="form-control" placeholder="Cantidad">
      </div>
      <button type="button" class="btn btn-default">Send invitation</button>
    </div-->

    <div class="form-group">
      {!! Form::label('comentario', '') !!}
      {!! Form::textarea('comentario', null, ['class'=>'form-control']) !!}
    </div>

    <div class="form-group">
      <a href="{{ route('backend.pedido.index') }}" class="btn btn-default">
        Cancelar
      </a>
      {!! Form::submit('Siguiente', ['class'=>'btn btn-primary', 'style'=>'float: right;']) !!}
    </div>
  {!! Form::close() !!}
@endsection
