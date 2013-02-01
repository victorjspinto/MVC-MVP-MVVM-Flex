package Model
{
	import mx.rpc.AsyncToken;

	public interface UserModel
	{
		function List(success:Function, fault:Function):AsyncToken;
	}
}