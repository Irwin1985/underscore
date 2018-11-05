  
# \_ ( underscore )

Construct &amp; Model complex Visual Foxpro Objects*  adding properties, arrays and collections the easy way.

Just make \_.prg available in your search path and start using it. Check and run \_test.prg.

Usage:

	with _( object , [ cNewPropertyName ] ) 

  		.property1 = any valid vfp expression

		.property2 = any valid vfp expression
	
		with _( .<newObjectPropertyName> [,cNewpropertyName] )
	
		endwith

		 .myCollection = .newCollection( [Item1,Item2,... Item20 ]) 
	
		 .myList = .newList( [ Item1,Item2,... Item20 ] )
	
		 .additems( "< collection/array name >" , item1,item2,.. item20 )
	
		 with .newItemFor("< collection/array name >" [, collectionItemkey] )
	
			.itemproperty1 = value
	
			.itemproperty2 = value 
	
		 endwith

 	endwith
