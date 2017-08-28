@extends('layouts.app')

@section('content')
<div class="header_container transparent_style">
    <div class="row" style="margin:0px;">
		<h1>Get Service on Your Printer</h1>
	</div>
</div>

<form method="post" action="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/submit_service_ticket') }}">
	{{ csrf_field() }}
	<div class="container" style="border:1px solid #dcdcdc; padding: 35px 75px; margin-top: 30px; margin-bottom: 20px;"> 
		<div class="row" style="
		margin-bottom: 30px;">
			<div class="col-md-6" style="padding-left:0px;">
				<h3 style="margin-top:0px; color:#51b2df;">				
					{{ $device_unit->device->model }}
				</h3> 
			</div> 
		</div>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-4">
				<b>Description</b>
			</div>
			<div class="col-sm-8">
				<textarea name="description" style="resize: none; border-radius: 5px; width: 100%; height: 140px;border:1px solid #dcdcdc; ">
				</textarea>
			</div>
		</div>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-4">
				<b>Error Codes?</b>
			</div>
			<div class="col-sm-8">
				<textarea name="error_codes" style="resize: none; border-radius: 5px; width: 100%; height: 140px;border:1px solid #dcdcdc; ">
				</textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4">
				@if (count ($device_unit->device->video_links) > 0)
					@foreach ($device_unit->device->video_links as $video_link)
						<a href="{{ $video_link->link }}">	
							<div class="hover_button video_block">
								<img src="{{ $video_link->image }}" />
								Video {{ $loop->index + 1 }}
							</div>	
						</a>	
					@endforeach
				@endif
			</div>
			<div class="col-sm-8">
				<div class="contact_person_details">
					@if ($device_unit->service_provider)
						@if ($device_unit->service_provider->contact_person_name)
							<b>Contact person:</b> {{ $device_unit->service_provider->contact_person_name }}<br>
						@endif
						@if ($device_unit->service_provider->contact_person_phone)
							<b>Phone:</b> {{ $device_unit->service_provider->contact_person_phone }}<br>
						@endif
					@endif
				</div>
				<input type="hidden" name="location_id" value="{{ $location->id }}" />
				<input type="hidden" name="company_id" value="{{ $location->company->id }}" />
				<button type="submit" class="hover_button submit_order_button">	
					Submit Service Ticket
				</button>
			</div>
		</div>
	</div>
</form>

@endsection
