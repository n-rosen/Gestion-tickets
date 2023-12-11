<!-- resources/views/tickets/user_tickets.blade.php -->

@extends('layouts.admin')
@section('content')

    <h1>Your Tickets</h1>
    @if ($userTickets->count() > 0)
        <div class="card-body">
            <table class=" table table-bordered table-striped table-hover ajaxTable datatable datatable-Ticket">

                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            ID
                        </th>
                        <th>
                            TITULO
                        </th>
                        <th>
                            CONTENIDO
                        </th>
                        <th>
                            ESTADO
                        </th>
                        <th>
                            CATEGORIA
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>

                </thead>
                @foreach ($userTickets as $ticket)
                    {{-- @dump($ticket) --}}
                    <tbody>
                        <tr>
                            <td width="10"></td>
                            <td>{{ $ticket->id }}</td>
                            <td>{{ $ticket->title }}</td>
                            <td>{{ $ticket->content }}</td>
                            <td>
                                @switch($ticket->status_id)
                                    @case(1)
                                        @php
                                            $estado = 'Abierto';
                                        @endphp
                                    @break

                                    @case(2)
                                        @php
                                            $estado = 'Cerrado';
                                        @endphp
                                    @break
                                @endswitch
                                {{ $estado }}
                            </td>
                            <td>
                                @switch($ticket->category_id)
                                    @case(1)
                                        @php
                                            $categoria = 'Otro';
                                        @endphp
                                    @break

                                    @case(2)
                                        @php
                                            $categoria = 'Pago';
                                        @endphp
                                    @break

                                    @case(3)
                                        @php
                                            $categoria = 'Pregunta Técnica';
                                        @endphp
                                    @break

                                    @default
                                @endswitch
                                {{ $categoria }}
                            </td>
                            <td>
                                <a class="btn btn-xs btn-primary" href="{{ route('tickets.show', $ticket->id) }}">
                                    Ver
                                </a>
                            </td>
                        </tr>
                    </tbody>
                @endforeach

            </table>
        </div>
    @else
        <p>Todavía no tienes ningín ticket</p>
    @endif
    <a href="/" class="btn btn-success btn-primary">Crear ticket</a>
@endsection
