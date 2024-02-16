
var $formEvent : Object
$formEvent:=FORM Event:C1606

Case of 
	: ($formEvent.code=On Load:K2:1)
		Form:C1466.lbTopLevel:=ds:C1482.TopLevel.all()
		
		//: ($formEvent.code=On Selection Change)  // This takes over On Clicked Form Event Code
		//Case of 
		//: ($formEvent.objectName="lbTopLevel")
		////Form.lbMidLevel:=Form.currentItemTopLevel.Link_4_return
		
		//End case 
		
End case 
