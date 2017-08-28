@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Service Providers List</div>

                <div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item" >
							<label>Add new service provider:</label>
							<div style="width:100%;">
								
								<form method="post" action="{{ url('admin/create_service_provider') }}">
									{{ csrf_field() }}
									<button type="submit" class="btn btn-info">
										Add
									</button>
								</form>
								
							</div>
						</li>
						
						@if (count($service_providers) > 0)
							<li class="list-group-item"> 
								<label for="supplyProviderOptions">Select supply provider to edit:</label>
								<form me
								thod="get" action="{{ url('admin/edit_service_provider') }}">
									{{ csrf_field() }}
									<div class="form-group" style="width:100%;">									
										
										<select class="form-control" id="supplyProviderOptions"
											name="service_provider_id"
										>
											@foreach ($service_providers as $service_provider)
												<option value="{{ $service_provider->id }}">{{ $service_provider->name }}</option>
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
