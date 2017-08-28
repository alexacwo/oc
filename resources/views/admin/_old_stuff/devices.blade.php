@extends('layouts.app')

@section('content')
<div class="container">
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
										Create
									</button>
								</form>
								
							</div>
						</li>
						
						@if (count($devices) > 0)
							<li class="list-group-item"> 
								<label for="clientOptions">Select device to edit:</label>
								<form method="get" action="{{ url('admin/edit_device') }}">
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
										<button type="submit" class="btn btn-success">
											Edit
										</button>
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
