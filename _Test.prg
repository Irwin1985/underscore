
Public omypc && check later on your debugger

omypc = Createobject('empty')

With _( omypc )  && simply pass object you want to modify, any referenced property will be added to passed object if does not exist:

	.madeby = 'Marco Plaza, 2018 - nfTools'
	.manufacturer = 'custom'
	.baseprice = 699
	.casetype  = 'ATX'
	.modelname = 'Ryzen Performance Plus'

	With _( .cpu )   && cpu will be a new object for oMyPc - check we pass ".cpu"  ( dot cpu ) because it's inside with - endwith
		.processorcount = 6
		.brand = 'AMD'
		.model = 'Ryzen 7'
		.clockspeed = 4.3
		.processorcount = 8
	Endwith

	With _(.motherboard)

		.manufacturer = 'Asus'
		.model = 'Prime B350-Plus AMD'
		.formfactor = 'ATX'
		.cpusocket = 'AM4'

		.power = .newList('CPU','CASE1','CASE2','CASE3')  && creating a list with 4 items

		.SPECS = .newCollection()
		
		with .newItemFor('specs','memory')
			.type = 'DDR4'
			.MAXSIZE = '64GB'
			.slots = 4
		endwith
		
		with .newItemFor('specs','usb')
			.internal = '3 @ PCIe 3.0 x2'
			.front = 'x1 Type-C'
			.rear  = 'x2 Type-A'
		endwith
		

	Endwith

	.storage = .newList()
	
	with .newItemFor( 'storage' )  && adding objects to list
		.manufacturer = 'Samsung'
		.model = '960 evo Series'
		.Type = 'internal'
		.connectivity = 'PCIe NVMe M.2'
		.capacity = '250gb'
	Endwith

	with .newItemFor( 'storage' )
		.manufacturer = 'Seagate'
		.model = 'Barracuda ST3000DM008'
		.Type = 'Internal'
		.formfactor = 3.5
		.capacity = '3tb'
		.connectivity = 'Sata 6.0'
		.rotationspeed = 7200
	Endwith


endwith

clear

? oMypc.motherboard.power[1]
? oMypc.storage[1].connectivity
? omypc.motherboard.specs('memory').maxsize
? omypc.motherboard.specs('memory').slots
? omypc.motherboard.specs('usb').front


