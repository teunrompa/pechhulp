@extends("layouts.header")
@section("content")
@foreach($garages as $garage)
    <p>{{$garage->name}}</p>
@endforeach
@stop
