@extends("layouts.header")
@section("content")
<div class="text-center">
    <h1>Hello {{$user->name}}</h1>
    <p>Your Role: {{$user->role->name}}</p>
</div>
@stop