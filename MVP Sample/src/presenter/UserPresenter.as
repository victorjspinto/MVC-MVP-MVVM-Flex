package presenter
{
	import mx.collections.ArrayCollection;
	
	import view.UserView;

	public class UserPresenter
	{
		public var userView:UserView;
		
		public function UserPresenter()
		{
				
		}
		
		private function list():void
		{
			
		}
		
		private function onListResult(result:ArrayCollection):void
		{
			userView.grid = result;
		}
		
		
	}
}