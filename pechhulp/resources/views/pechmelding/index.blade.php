@extends("layouts.header")
@section("content")
<div>
    <form action="/" method="POST">
        @csrf
        @method('PUT')
        <label for="pechmelding_description"></label>
        <input type="text" name="pechmelding_description">
    </form>
</div>
@stop
