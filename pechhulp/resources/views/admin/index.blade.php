@extends("layouts.header")
@section("content")
<div class="admin-container">

    <div>
        <h2>Admin menu</h2>
    </div>
    <div>
        <table>
            <thead>
                <tr>
                    <th>Garage</th>
                    <th>Afgehandelde Meldingen</th>
                </tr>
            </thead>
            <tbody>
                @foreach($garages as $garage)
                <?php $match = false?>
                <tr>
                    <td>{{$garage->name}}</td>
                    @foreach($completedSupportCalls as $completedSupportCall)
                        @if($completedSupportCall->name === $garage->name)    
                            <td>{{$completedSupportCall->amount}}</td>
                            <?php $match = true ?>
                        @endif
                    @endforeach
                    @if(!$match)
                        <td>0</td>
                    @endif
                </tr>
                @endforeach      
            </tbody>
        </table>
    </div>
    <div>
        <?php
        $avrageScore = 0;
        $count = 0;
        foreach($reviews as $review){
            $avrageScore += $review->rating;
            $count++;
        }
        ?>
        <p>Avrage review score: {{$avrageScore / $count}}</p>
    </div>
</div>

@stop