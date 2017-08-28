@extends('layouts.app')

@section('content')
	<div ng-cloak>
		<div class="header_container transparent_style">
			<div class="row" style="margin:0px;">
				<h1>Printers Needing Meter Reads</h1>
			</div>
		</div>
		
		<form method="post"
			action="{{ url('company/' . $location->company->id . '/location/' . $location->id . '/submit_meter_reads') }}"
			enctype="multipart/form-data"
		>
			{{ csrf_field() }}
			@foreach ($device_units_needing_meter_reads as $device_unit)
				<div class="container device_container">
					<div class="row">			
							<div class="col-sm-4">
								@if ($device_unit->device->photo_url)
									<img src="{{ url('storage/images/' . $device_unit->device->photo_url )}}" class="device_image" />
								@endif
							</div>
							<div class="col-sm-8 devices_needing_meter_reads">
								@if ($location->manual_meter_reads_entry)	
									<div class="color_block">
										<label>Color:</label>
										<input type="number" placeholder="######"
											name="meter_reads[{{$device_unit->id}}][color]"
										/>
									</div>
									<div class="blank_and_white_block">
										<label>Blank and White:</label>
										<input type="number" placeholder="######"
											name="meter_reads[{{$device_unit->id}}][mono]"
										/>
									</div>
								@endif	
								<h4><b>OR</b></h4>
								<div style="width: 255px; float:left;">	
									<label>Upload configuration sheet:</label>
								</div>	
								<div style="float:left;">
									<label class="btn btn-success btn-file" style="text-align:center; padding:0px;">
										Browse
										<input type="file" style="display: none;"
											data-file="uploadedDeviceConfigFile[{{$device_unit->id}}]"
											name="config_files[{{$device_unit->id}}]"
											multiple
										/>
									</label>
									<br>
									<strong>{[{ uploadedDeviceConfigFile[{{$device_unit->id}}].name }]}</strong>
								</div>
								<div class="clearfix"></div>
							</div>			
						<div class="col-sm-6 col-md-offset-6">
						</div>
					</div>	
				</div>
			@endforeach
			
			<div class="container">
				<button type="submit" class="need_button hover_button need_supplies_block" style="border: none; float:right;"> 
					Submit Meters
				</button>
			</div>
		</form> 
	</div>

@endsection
