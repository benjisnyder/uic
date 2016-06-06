<aura:application >
    <aura:handler name="init" value="{!this}" action="{!c.onInit}"/> 
    <div style="padding: 20px;background: #F4F6F9;">
    <c:style >
	    <div class="row">
        	<h1 class="slds-text-heading--large">User Interface Components (uic:)</h1>
    	    <p>A managed package of fully functional SLDS Lightning components</p>
        </div>
        
        <div class="row">
            <h2>Menu</h2>
            
            <c:menu aura:id="menu1">
            	<aura:set attribute="button">
                    <c:button label="Click Me" />
                </aura:set>
                <p style="padding:10px">Plain text content inside a uic:menu.</p>
            </c:menu>
            
            <c:menu aura:id="menu2">
            	<aura:set attribute="button">
                    <c:button icon="true" theme="none">
                        <c:icon icon="settings" type="utility" theme="default" size="x-small" />
                    </c:button>
                </aura:set>
                <c:menuHeader label="Testing Header" />
                <c:menuList >
                    <c:menuListItem label="Test" press="{!c.toggleMenu2}" />
                    <c:menuListItem label="Test 2" press="{!c.toggleMenu2}" />
                    <c:menuListItem topSpace="true">This plain text content inside a uic:menuListItem</c:menuListItem>
                </c:menuList>
            </c:menu>
        </div>
        
        <div class="row">
            <h2>Icons</h2>
            <c:icon icon="account" />
            <c:icon icon="account" showBackground="false" />
            <c:icon icon="account" size="large" /> 
            <c:icon icon="adduser" type="utility" />
            <c:icon icon="delete" type="utility" theme="default" size="small" />
            <c:icon icon="delete" type="action" shape="circle" />
            <c:icon icon="delete" type="action" shape="circle" showBackground="false" />
        </div>

		<div class="row">
            <h2>Badges</h2>
            <c:badge label="One" />
            <c:badge label="Two" theme="shade" />
            <c:badge label="Three" theme="inverse" />
        </div>

        <div class="row">
        	<h2>Buttons</h2>
            <c:button label="Default" press="{!c.alert}" theme="none"/>
            <c:button label="Neutral" press="{!c.alert}" />
            <c:button label="Destructive" press="{!c.alert}" theme="destructive" />
            <c:button label="Brand" press="{!c.alert}" theme="brand" />
            <c:button label="Inverse" press="{!c.alert}" theme="inverse" />
        </div>
        
        <div class="row">
            <h2>Button Groups</h2>
            <c:buttonGroup >
                <c:button label="Button 1" press="{!c.alert}"/>
                <c:button label="Button 2" press="{!c.alert}"/>
            </c:buttonGroup>
        </div>
        
        <div class="row">
        	<h2>Breadcrumbs</h2>
            <c:breadcrumbs >
                <c:breadcrumb label="One" press="{!c.alert}" />
                <c:breadcrumb label="Two" press="{!c.alert}" />
                <c:breadcrumb label="Three" press="{!c.alert}" />
            </c:breadcrumbs>
        </div>
        
        <div class="row">
        	<h2>Pills</h2>
            <c:pill label="Test Pill" press="{!c.alert}" onremove="{!c.alertTwo}" />
            <c:pill label="Test Pill" press="{!c.alert}" onremove="{!c.alertTwo}" theme="bare" />
        </div>
        
        <div class="row">
        	<h2>Spinner</h2>
            <div class="segment"><c:spinner /></div>
			<div class="segment"><c:spinner size="medium" /></div>
            <div class="segment"><c:spinner size="large" /></div>
            <div class="segment"><c:spinner theme="brand" /></div>
            <div class="segment" style="background:#333;"><c:spinner theme="inverse" /></div>
        </div>
        
        <div class="row">
        	<h2>Grids</h2>
            <c:grid >
            	<c:column >1</c:column>
                <c:column >2</c:column>
                <c:column >
                	<c:grid >
                    	<c:column sizeMin="6" sizeMax="12">1</c:column>
                        <c:column sizeMin="1" sizeMax="12">2</c:column>
                        <c:column sizeMin="1" sizeMax="12">3</c:column>
                        <c:column sizeMin="1" sizeMax="12">4</c:column>
                        <c:column sizeMin="1" sizeMax="12">5</c:column>
                        <c:column sizeMin="1" sizeMax="12">6</c:column>
                        <c:column sizeMin="1" sizeMax="12">7</c:column>
                    </c:grid>
                </c:column>
            </c:grid>
        </div>
        
        <div class="row">
        	<h2>Modals</h2>
            <div class="segment segment--large">
                <c:modal aura:id="modal" label="Modal with Tagline &amp; Custom Buttons" show="true">
                    <aura:set attribute="tagline">
                        This is the tagline with html <a href="google.com">Google</a>
                    </aura:set>
                    <p>This is the content.</p>
                    <aura:set attribute="buttons">
                        <c:button label="Default" press="{!c.alert}" theme="none"/>
                        <c:button label="Neutral" press="{!c.alert}" />
                        <c:button label="Destructive" press="{!c.alert}" theme="destructive" />
                        <c:button label="Brand" press="{!c.alert}" theme="brand" />
                        <c:button label="Inverse" press="{!c.alert}" theme="inverse" />
                    </aura:set>
                </c:modal>
                <c:button label="Show Modal" press="{!c.showModal}" theme="neutral" />
            </div>
            <div class="segment segment--large">
                <c:modal aura:id="modal2" label="Large Modal" show="true" size="large">
                    This is the content.
                    <aura:set attribute="buttons">
                        <c:button label="Okay" press="{!c.closeModal2}" theme="neutral" />
                    </aura:set>
                </c:modal>
                <c:button label="Show Modal" press="{!c.showModal2}" theme="neutral" />
            </div>
        </div>
    </c:style>
    </div>
</aura:application>