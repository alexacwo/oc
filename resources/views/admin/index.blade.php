@extends('layouts.app')

@section('content')
<div class="container admin_dashboard" ng-cloak>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Admin</div>

                <div class="panel-body">					
					<form action=" " method="POST" class="form-horizontal">
						{{ csrf_field() }}
						
						<div class="form-group">
							<label class="control-label col-sm-2" for=" 1">
								Admin email:
							</label>
							<div class="col-sm-10">
							<input type="text" class="form-control" id=" 1"
								name=" "
								placeholder="Enter address"
								value="{{ $user->email }}"
							>
							</div>
						</div>
						
						<div style="width:100%; margin-bottom:20px;">
							<!-- <button type="submit" class="btn btn-success" style="float:right;">
								Save
							</button>  -->
							<div class="clearfix"></div>
						</div>
					</form>
					
					<div class="panel panel-info">
						<div class="panel-heading">Search for the copier:</div>

						<div class="panel-body">
							<form action="{{ url('admin/search_for_the_device') }}" method="post">
								{{ csrf_field() }}
								<div class="col-sm-10">
									<input type="text"
										class="form-control"
										placeholder="Enter copier model or serial number or part of it"
										name="copier_name"
									>
								</div>
								<div class="col-sm-2">
									<button class="btn btn-info">
										Search
									</button>
								</div>
							</form>
						</div>
					</div>
					
					<div class="panel panel-info">
						<div class="panel-heading">Usernames/Passwords List</div>

						<div class="panel-body">
						
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Id</th>
										<th>Username</th>
										<th>Email</th>
										<th>Password</th>
										<th>&nbsp;</th>
										<th>&nbsp;</th>
									</tr>
								</thead>
								<tbody>
								  
									@foreach ($users as $single_user)
									 
										<tr>												
											<td>
												{{ $single_user->id }}
											</td>										
											<td>
												{{ $single_user->name }}
											</td>
											<td>
												{{ $single_user->email }}
											</td>
											<td>														
												<input type="text" class="form-control" id="user_password_{{ $single_user->id }}"
													placeholder="User password"
													ng-init="userPassword[{{ $single_user->id }}] = '{{ $single_user->dec_password }}'"
													ng-model="userPassword[{{ $single_user->id }}]"
												>
											</td>
											<td>
												<form action="{{ url('admin/save_user_credentials', [$single_user->id]) }}" method="POST" class="form-horizontal">
													{{ csrf_field() }}													
													<input type="hidden" name="password" value="{[{userPassword[{{ $single_user->id }}]}]}" />
													<button class="btn btn-info" style="float:right;">
														Save
													</button>
												</form>
											</td>
											<td>
												<form action="{{ url('admin/send_invitation', [$single_user->id]) }}" method="POST" class="form-horizontal">
													{{ csrf_field() }}												
													<input type="hidden" name="email" value="{{ $single_user->email }}" />												
													<input type="hidden" name="password" value="{[{userPassword[{{ $single_user->id }}]}]}" />
													<button   class="btn btn-success" style="float:right;">
														Send invitation
													</button>
												</form>
											</td>
										</tr> 
										 
										
									@endforeach	
									
								</tbody>
							</table>				
						</div>
					</div>
				</div>
			</div>
        </div>
    </div>
</div>
@endsection
