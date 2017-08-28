@extends('layouts.app')

@section('content')
<div class="container" >
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Locations List</div>

                <div class="panel-body">
				
					<label for="clientOptions">Select company:</label>
					<form method="get" action="{{ url('admin/edit_locations') }}">
						{{ csrf_field() }}
						<div class="form-group" style="width:100%;">
							
							<select class="form-control" id="clientOptions"
								name="company_user_id"
							>
								@foreach ($organizations as $organization)
									<option value="{{ $organization->user_id }}">{{ $organization->company_name }}</option>
								@endforeach
							</select>
							
						</div>
						<div class="form-group" style="width:100%;">
							<button type="submit" class="btn btn-success">
								Edit Locations
							</button>
						</div>
					</form> 
					
				</div>
			</div>
			
            <div class="panel panel-info">
                <div class="panel-heading">
					<b>{{ $organization->company_name }}</b> - Add locations
				</div>

                <div class="panel-body">
				
					<form action="{{ url('admin/add_location', [$organization->id]) }}" method="post" class="form-horizontal">
						{{ csrf_field() }}					
						
						<div class="form-group">
							<div class="col-sm-6">
								<button type="submit" class="btn btn-info">
									<i class="fa fa-plus"></i> Add Location
								</button>
							</div>
						</div>
					</form>
					
					@if (count($locations) > 0)
						<div class="panel panel-default">
							<div class="panel-heading">
								Existing locations
							</div>

							<div class="panel-body">  

								<table class="table table-striped task-table">

									<thead>
										<th>Location</th>
										<th>&nbsp;</th>
									</thead>

									<tbody>
										@foreach ($locations as $location)
											<tr>													
												<td class="form-horizontal">
													<form action="{{ url('admin/save_location/'.$location->id) }}" method="post">
														{{ csrf_field() }}
															<div class="col-sm-10">
															<div class="form-group">
																<label class="control-label col-sm-2" for="location_address_{{ $location->id }}">
																	Address:
																</label>
																<div class="col-sm-10">
																<input type="text" class="form-control" id="location_address_{{ $location->id }}"
																	name="location_address[{{ $location->id }}]"
																	placeholder="Enter address"
																	value="{{ $location->address }}"
																>
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-sm-2" for="location_city_{{ $location->id }}">
																	City:
																</label>
																<div class="col-sm-10">
																<input type="text" class="form-control" id="location_city_{{ $location->id }}"
																	name="location_city[{{ $location->id }}]"
																	placeholder="Enter city"
																	value="{{ $location->city }}"
																>
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-sm-2" for="location_state_{{ $location->id }}">
																	State:
																</label>
																<div class="col-sm-10"> 
																<input type="text" class="form-control" id="location_state_{{ $location->id }}"
																	name="location_state[{{ $location->id }}]"
																	placeholder="Enter state" 
																	value="{{ $location->state }}"
																>
																</div>
															</div>
															<div class="form-group">
																<label class="control-label col-sm-2" for="location_zip_code_{{ $location->id }}">
																	Zip Code:
																</label>
																<div class="col-sm-10"> 
																<input type="text" class="form-control" id="location_zip_code_{{ $location->id }}"
																	name="location_zip_code[{{ $location->id }}]"
																	placeholder="Enter zip code"
																	value="{{ $location->zip_code }}"
																>
																</div>
															</div>
															</div>
															<div class="col-sm-2">
															<button type="submit" class="btn btn-info">
																<i class="fa fa-trash"></i> Save
															</button> 
															</div> 
													</form>
												</td>
 
												
												<td class="col-sm-1">
													<form action="{{ url('admin/delete_location/'.$location->id) }}" method="post">
														{{ csrf_field() }}
														{{ method_field('DELETE') }}

														<button type="submit" class="btn btn-danger">
															<i class="fa fa-trash"></i> Delete
														</button>
													</form>
												</td>
											</tr>
										@endforeach
									</tbody>
								</table>
							</div>
						</div>
					@endif
					 
				</div>
            </div>
        </div>
    </div>
</div>
@endsection
