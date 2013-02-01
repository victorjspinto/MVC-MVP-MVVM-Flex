package ViewModel
{
	import Model.Mock.UserModelMock;
	import Model.UserModel;
	
	import mx.collections.ArrayCollection;

	public class UserViewModel
	{
		private var userModel:UserModel = new UserModelMock();
		
		[Bindable]
		[ArrayElementType("Domain.User")]
		public var users:ArrayCollection = new ArrayCollection();;
		
		public function UserViewModel()
		{

		}
		
		public function OnLoad():void
		{
			List();
		}

		public function List()
		{
			userModel.List(OnListSucess, OnFault);
		}
		
		public function OnListSucess(result:ArrayCollection):void
		{
			this.users = result;
		}
		
		public function OnFault()
		{
			
		}
	}
}