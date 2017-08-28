@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-info">
                <div class="panel-heading">Clients List</div>

                <div class="panel-body">
					<ul class="list-group">
						<li class="list-group-item" >
							<label>Create a new company:</label>
							<div style="width:100%;">
								
								<form method="post" action="{{ url('admin/create_client') }}">
									{{ csrf_field() }}
									<button type="submit" class="btn btn-info">
										Create
									</button>
								</form>
								
							</div>
						</li> 
						<li class="list-group-item"> 
							<label for="clientOptions">Select company to edit:</label>
							<form method="get" action="{{ url('admin/edit_company') }}">
								{{ csrf_field() }}
								<div class="form-group" style="width:100%;">
									
									
										<select class="form-control" id="clientOptions"
											name="company_user_id"
										>
											@foreach ($companies as $company)
												<option value="{{ $company->user_id }}">{{ $company->company_name }}</option>
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
					</ul>

					
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
