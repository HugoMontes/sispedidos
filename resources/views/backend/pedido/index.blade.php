@extends('backend.layouts.main')
@section('title', 'Pedidos')
@section('content')
  <a href="{{ route('backend.pedido.create') }}" class="btn btn-primary">Nuevo pedido</a>
  <table class="table">
    <thead>
      <tr>
        <th>Fecha Pedido</th>
        <th>Farmacia</th>
        <th>ID</th>
        <th>Comentario</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($pedidos as $pedido)
        <tr>
          <td>{{ $pedido->created_at }}</td>
          <td>{{ $pedido->farmacia->nombre }}</td>
          <td>{{ $pedido->id }}</td>
          <td>{{ $pedido->comentario }}</td>
          <td>
            <a href="{{ route('backend.pedido.destroy', $pedido->id) }}" class="btn btn-danger" title="Eliminar">
              <span class="glyphicon glyphicon-trash"></span>
            </a>
            <a href="{{ route('backend.pedido.edit', $pedido->id) }}" class="btn btn-primary" title="Editar">
              <span class="glyphicon glyphicon-pencil"></span>
            </a>
          </td>
        </tr>
      @endforeach
    </tbody>
  </table>
  <div class="text-center">
      {{ $pedidos->links() }}
  </div>
@endsection
@section('javascript')
  <script type="text/javascript">
    $('.btn-danger').on('click',function(event){
      event.preventDefault();
      var opcion=confirm('Esta seguro de eliminar el registro?');
      if(opcion){
        $(location).attr('href', $(this).attr('href'));
      }
      return false;
    });
  </script>
@endsection
