@extends("layouts.header")
@section("content")
    <div>
       <div>
            <div class="text-center">
                <h2>Welkom bij Pechhulp nederland</h2>
            </div>    
            <div class="hero-banner">
                <h2 class="text-center">Kies uw pakket</h2>
            </div>
       </div> 
       <div>
        <div class="contact-types">
            @foreach ($contractTypes as $contractType)
            <div class="contract-type">
                <div class="contract-name">
                    <h3>{{$contractType->name}}</h3>
                </div>
                <div class="contract-info">
                    <p>Bescrijving: {{$contractType->description}}</p>
                </div>
                <div class="contact-info">
                    <p>Prijs: {{$contractType->cost}}</p>
                </div>
            </div>    
            @endforeach
        </div>
       </div>
    </div>
@stop
