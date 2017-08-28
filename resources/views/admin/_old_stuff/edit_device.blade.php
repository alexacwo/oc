@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading"><b>{{ $device->model}}</b> edit form</div>

                <div class="panel-body">
				
					<form method="post" action="{{ url('admin/save_device', [$device->id]) }}" class="form-horizontal">
						{{ csrf_field() }}
						<div style="width:100%; margin-bottom:20px;">
							<button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button> 
							<div class="clearfix"></div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-2" for="device_type">
								Device type
							</label>
							<div class="col-sm-10">								
								<select class="form-control" id="device_type"
									name="device_type">
									<option value="printer">Printer</option>
									<option value="copier">Copier</option>
									<option value="other">Other</option>
								</select>										
							</div> 
						</div>
						<div class="form-group">						
							<label class="control-label col-sm-2" for="device_make">
								Device make
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="device_make"
									value="{{ $device->make }}"
									placeholder="Enter device make"
									name="device_make"
								>
							</div> 
						</div>	
						<div class="form-group">			
							<label class="control-label col-sm-2" for="device_model">
								Device model
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="device_model"
									value="{{ $device->model }}"
									placeholder="Enter device model"
									name="device_model"
								>
							</div> 
						</div>	
						<div class="form-group">
							<label class="control-label col-sm-2" for="device_photo_url">
								Device photo URL
							</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="device_photo_url"
									value="{{ $device->photo_url }}"
									placeholder="Enter device photo URL"
									name="device_photo_url"
								>
							</div> 
						</div>	
						
						<div style="width:100%;">
							<button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button> 
							<div class="clearfix"></div>
						</div>
					</form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
