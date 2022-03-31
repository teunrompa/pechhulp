<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="/css/app.css" rel="stylesheet">
    <link href={{asset('css/style.css') }} rel="stylesheet">
    <title>Pechhulp</title>
</head>
<body>
    <header>
        <div class="header-container">
            <div class="header-logo">
                <a href="/"><img src="{{asset('images/logo_pechhulp.jpg')}}" alt="logo_pechulp"></a>
            </div>
            <div class="header-title">
                <h1>Pechhulp Nederland</h1>
            </div>
            <div class="header-nav">
                <nav>
                    <a href="" id="pech-melding">Maak Pechmelding</a>
                    <a href="/reviews">Reviews</a>
                </nav>
            </div>
        </div>
    </header>
    @yield('content')
</body>
</html>
