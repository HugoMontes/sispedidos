@extends('backend.layouts.main')
@section('title', 'Nuevo Usuario')
@section('content')
  {!! Form::open(['route'=>'backend.user.store']) !!}
    <div class="form-group">
      {!! Form::label('name', 'Usuario') !!}
      {!! Form::text('name',null, ['class'=>'form-control', 'placeholder'=>'Nombre de usuario', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('email', 'Correo electronico') !!}
      {!! Form::text('email',null, ['class'=>'form-control', 'placeholder'=>'example@gmail.com', 'required']) !!}
    </div>
    <div class="form-group">
        {!! Form::label('password', 'Contraseña') !!}
        {!! Form::password('password', ['class'=>'form-control', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('type', 'Tipo') !!}
      {!! Form::select('type', ['member'=>'Miembro', 'admin'=>'Administrador'], null, ['class'=>'form-control', 'placeholder'=>'Seleccione una opción', 'required']) !!}
    </div>
    <div class="form-group">
      <a href="{{ route('backend.user.index') }}" class="btn btn-default">
        Cancelar
      </a>
      {!! Form::submit('Guardar', ['class'=>'btn btn-primary']) !!}
    </div>
  {!! Form::close() !!}
@endsection
