@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Devices List</div>

                <div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item" >
							<label>Add new device:</label>
							<div style="width:100%;">
								
								<form method="post" action="{{ url('admin/create_device') }}">
									{{ csrf_field() }}
									<button type="submit" class="btn btn-info">
										Add
									</button>
								</form>
								
							</div>
						</li>
						
						@if (count($devices) > 0)
							<li class="list-group-item"> 
						
								@if (Session::has('device_removed'))
									<div class="alert alert-success">
										<strong>Success!</strong> {{ Session::get('device_removed') }}
									</div>
								@endif
								
								<label for="clientOptions">Select device to edit:</label>
								<form method="get" action="{{ url('admin/edit_or_remove_device') }}">
									{{ csrf_field() }}
									<div class="form-group" style="width:100%;">
										<select class="form-control" id="clientOptions"
											name="device_id"
										>
											@foreach ($devices as $device)
												<option value="{{ $device->id }}">{{ $device->model }}</option>
											@endforeach
										</select>										
									</div>
									<div class="form-group" style="width:100%;">
										<input type="submit" class="btn btn-success" name="edit_button" value="Edit">
										<input onclick="return confirm('Do you really want to remove this device?');" type="submit" class="btn btn-danger" name="remove_button" value="Remove device" style="float:right;">
									</div>
								</form>
							</li>
						@endif
						
					</ul>

					
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
