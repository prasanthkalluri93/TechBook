({
    handleShowActiveSectionName : function(component, event, helper){
        alert(component.find("accordion").get('v.activeSectionName'));
    },
    
    handleToggleSectionD : function(component){
        component.set('v.isDVisible', !component.get('v.isDVisible'));
                      
    }
});