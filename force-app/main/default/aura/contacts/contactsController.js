({
	goToRecord: function(component, event, helper) {
		//fire the event to navigate to contact record
        var sObjectEvent=$A.get("e.force:navigateToSobject");
        sObjectEvent.setParams({
            "recordId":component.get("v.contact.Id")
        })
        sObjectEvent.fire();
	}
})