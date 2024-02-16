//%attributes = {}


// Mark:- populate table with junk data
If (False:C215)
	
	var $midLevel : cs:C1710.MidLevelEntity
	var $topLevel : cs:C1710.TopLevelEntity
	
	var $i : Integer
	
	For ($i; 1; 100)
		$midLevel:=ds:C1482.MidLevel.new()
		$midLevel.name:=Generate UUID:C1066
		$midLevel.observations:=New object:C1471(\
			"here is one"; Timestamp:C1445; \
			"stuff"; Generate UUID:C1066; \
			"nestedObject"; New object:C1471("a"; "look it's an a"; "b"; "bee"); \
			"nestedCollection"; New collection:C1472(["a"; "b"; ["c"]]))
		
		If ($midLevel.save().success)
			$topLevel:=ds:C1482.TopLevel.new()
			$topLevel.name:=Generate UUID:C1066
			$topLevel.midlevelpid:=$midLevel.ID
			$topLevel.save()
		End if 
		
	End for 
	
End if 