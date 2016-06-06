({
	onInit : function(component, event, helper) {
		var children = component.get('v.body');
        var tempCls = '';
        var btn;

        for (var i = 0, l = children.length; i < l; i++) {
			btn = children[i];

            if (btn.isInstanceOf('c:button')) {
            	btn.set('v.grouped', true);
            }
        }
	}
})