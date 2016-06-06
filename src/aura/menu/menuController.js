({
	onInit : function(component, event, helper) {
		var button = component.get('v.button');
        
        if (button) {
            button = button[0];
        } else {
            return;
        }
		
        // If the user has passed in a c:button and has not set a press action
        // automatically toggle the menu on press of the button
        if (button.isInstanceOf('c:button') && !button.get('v.press')) {
	    	button.set('v.press', component.get('v.toggleAction'));
        }
	},
    
    doToggle : function(component, event, helper) {
        component.set('v.visible', !component.get('v.visible'));
    }
})