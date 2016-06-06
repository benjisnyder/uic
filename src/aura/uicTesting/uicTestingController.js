({
	onInit : function(component, event, helper) {

	},
    
    alert : function(component, event, helper) {
        alert('You clicked something!');
    },
    
    alertTwo : function() {
        alert('You clicked something else!');
    },
    
    showModal : function(component) {
        component.find('modal').set('v.show', true);
    },
    
    showModal2 : function(component) {
        component.find('modal2').set('v.show', true);
    },
    
    closeModal2 : function(component) {
        component.find('modal2').set('v.show', false);
    },
    
    toggleMenu1 : function(component) {
        var menu = component.find('menu1');
        var visible = menu.get('v.visible');
        
        menu.set('v.visible', !visible);
    },
    
    toggleMenu2 : function(component) {
		var menu = component.find('menu2');
        var visible = menu.get('v.visible');
        
        menu.set('v.visible', !visible);
    }
})