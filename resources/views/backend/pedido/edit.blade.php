@extends('backend.layouts.main')
@section('title', 'Editar Pedido')
@section('content')
  {!! Form::open(['route'=>['backend.pedido.update', $pedido], 'method'=>'PUT']) !!}
    <div class="form-group">
      {!! Form::label('farmacia_id', 'Farmacia') !!}
      {!! Form::select('farmacia_id', $farmacias, $pedido->farmacia->id, ['class'=>'form-control', 'placeholder'=>'Seleccione un cliente', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('comentario', '') !!}
      {!! Form::textarea('comentario', $pedido->comentario, ['class'=>'form-control']) !!}
    </div>

    <div class="form-group">
      <a href="{{ route('backend.pedido.index') }}" class="btn btn-default">
        Cancelar
      </a>
      {!! Form::submit('Siguiente', ['class'=>'btn btn-primary', 'style'=>'float: right;']) !!}
    </div>
  {!! Form::close() !!}
@endsection
