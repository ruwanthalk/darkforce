trigger ActivityTrigger on Activity__c (after update)
{
	if(Trigger.isAfter && Trigger.isUpdate)
	{
		FeedItem post;
		list<FeedItem> posts = new list<FeedItem>();
		
		for(Activity__c n_activity : Trigger.new)
		{
			if(n_activity.Status__c == 'Assigned' && Trigger.oldMap.get(n_activity.Id).Status__c != 'Assigned')
			{
				post = new FeedItem();
				post.ParentId = n_activity.User__c; //eg. Opportunity id, custom object id..
				post.Body = n_activity.Name__c + ' task assigned';
				posts.add(post);
			}
		}
		insert posts;
	}
}