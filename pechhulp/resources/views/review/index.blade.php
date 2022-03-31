@extends("layouts.header")
@section("content")
<div>
    <h1>Reviews</h1>
    @foreach ($reviews as $review)
        <div class="review-container">
            <div>
                User: {{$review->user->name}}
            </div>
            <div>
                Review: {{$review->revieuw_content}}
            </div>
        </div>
    @endforeach
</div>
@stop