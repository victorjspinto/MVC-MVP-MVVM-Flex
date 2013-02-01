package Model.Mock
{
	import Domain.User;
	
	import Model.UserModel;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	
	import org.swizframework.utils.services.ServiceHelper;

	public class UserModelMock implements UserModel
	{
		public function UserModelMock()
		{
		
		}
		
		public function List(success:Function, fault:Function):AsyncToken
		{
			success.call(new ArrayCollection( USER_LIST.toArray() ));
			
			return new AsyncToken();
		}

		public static const USER_LIST:ArrayCollection = new ArrayCollection(
			[
			 new User(),
			 new User(),
			 new User()
			]
		);
	}
}