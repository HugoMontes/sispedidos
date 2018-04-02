@extends('backend.layouts.main')
@section('title', 'Adicionar Productos al Pedido')
@section('content')
  {!! Form::open(['route'=>'backend.detalle.store']) !!}
    <div class="form-inline" style="border: solid 1px #6f6f6f; margin: 12px 0px; padding: 15px;">
      <div class="form-group">
        {!! Form::label('producto_id', 'Producto') !!}
        {!! Form::select('producto_id', $productos, null, ['class'=>'form-control', 'placeholder'=>'Seleccione un producto', 'required']) !!}
      </div>
      <div class="form-group">
        {!! Form::label('cantidad', 'Cantidad') !!}
        {!! Form::number('cantidad',null, ['class'=>'form-control', 'placeholder'=>'Cantidad', 'required']) !!}
      </div>
      <!--button type="button" class="btn btn-success">Adicionar pedido</button-->
      {!! Form::hidden('pedido_id', $pedido_id) !!}
      {!! Form::submit('Adicionar producto', ['class'=>'btn btn-success']) !!}
    </div>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th>Producto</th>
          <th>Cantidad</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($detalles as $detalle)
          <tr>
            <td>{{ $detalle->producto->nombre }}</td>
            <td>{{ $detalle->cantidad }}</td>
            <td>
              <a href="{{ route('backend.detalle.destroy', $detalle->id) }}" class="btn btn-danger" title="Eliminar">
                <span class="glyphicon glyphicon-trash"></span>
              </a>
            </td>
          </tr>
        @endforeach
      </tbody>
    </table>


    <div class="form-group">
      <a href="{{ route('backend.pedido.edit', $pedido_id) }}" class="btn btn-default">
        Atras
      </a>
      <a href="{{ route('backend.pedido.index') }}" class="btn btn-primary" style="float: right;">
        Finalizar
      </a>
      {{--!! Form::submit('Finalizar', ['class'=>'btn btn-primary', 'style'=>'float: right;']) !!--}}
    </div>
  {!! Form::close() !!}
@endsection
