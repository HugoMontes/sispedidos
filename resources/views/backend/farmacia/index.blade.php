@extends('backend.layouts.main')
@section('title', 'Clientes')
@section('content')
  <a href="{{ route('backend.cliente.create') }}" class="btn btn-primary">Nuevo cliente</a>
  <table class="table">
    <thead>
      <tr>
        <th>Farmacia</th>
        <th>Dirección</th>
        <th>Telefono</th>
        <th>Dueño(a)</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($farmacias as $farmacia)
        <tr>
          <td>{{ $farmacia->nombre }}</td>
          <td>{{ $farmacia->direccion }}</td>
          <td>{{ $farmacia->telefono }}</td>
          <td>{{ $farmacia->duenio }}</td>
          <td>
            <a href="{{ route('backend.cliente.destroy', $farmacia->id) }}" class="btn btn-danger" title="Eliminar">
              <span class="glyphicon glyphicon-trash"></span>
            </a>
            <a href="{{ route('backend.cliente.edit', $farmacia->id) }}" class="btn btn-primary" title="Editar">
              <span class="glyphicon glyphicon-pencil"></span>
            </a>
          </td>
        </tr>
      @endforeach
    </tbody>
  </table>
  <div class="text-center">
      {{ $farmacias->links() }}
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
