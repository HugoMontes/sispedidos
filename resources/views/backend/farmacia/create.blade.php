@extends('backend.layouts.main')
@section('title', 'Nuevo Cliente')
@section('content')
  {!! Form::open(['route'=>'backend.cliente.store']) !!}
    <div class="form-group">
      {!! Form::label('nombre', 'Farmacia') !!}
      {!! Form::text('nombre',null, ['class'=>'form-control', 'placeholder'=>'Nombre o razón social', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('direccion', 'Dirección') !!}
      {!! Form::text('direccion',null, ['class'=>'form-control', 'placeholder'=>'Calle/Zona Nro', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('telefono', 'Telefono/Celular') !!}
      {!! Form::text('telefono',null, ['class'=>'form-control', 'placeholder'=>'Numero telefonico o celular', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('duenio', 'Nombre del dueño(a)') !!}
      {!! Form::text('duenio',null, ['class'=>'form-control', 'placeholder'=>'Nombre completo del dueño o dueña', 'required']) !!}
    </div>
    <div class="form-group">
      <a href="{{ route('backend.cliente.index') }}" class="btn btn-default">
        Cancelar
      </a>
      {!! Form::submit('Guardar', ['class'=>'btn btn-primary']) !!}
    </div>
  {!! Form::close() !!}
@endsection
