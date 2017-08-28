@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-cloak>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Select company to edit locations</div>

                <div class="panel-body">
				
					<label for="clientOptions">Select company:</label>
					<form method="get" action="{{ url('admin/edit_locations') }}">
						{{ csrf_field() }}
						<div class="form-group" style="width:100%;">
							
							<select class="form-control" id="clientOptions"
								name="company_id"
							>
								@foreach ($companies as $company)
									<option value="{{ $company->id }}">{{ $company->company_name }}</option>
								@endforeach
							</select>
							
						</div>
						<div class="form-group" style="width:100%;">
							<button type="submit" class="btn btn-success">
								Edit
							</button>
						</div>
					</form> 
					
				</div>
			</div>			
        </div>
    </div>
</div>
@endsection
