
(globals
    version = 3
    io_order = clockwise
    space = 20 					#Spacing between 2 IO pads
    total_edge = 3

)

(iopad
	(topleft
                (inst  name="CornerCell1"       cell=pfrelr  offset=0 orientation=R180 place_status=fixed )
	 )

        (left	
		( inst 	name="Iclk"		cell=pc3d01     place_status=fixed)	
		( inst  name="Irst"		cell=pc3d01     place_status=fixed)	
		( inst 	name="VDD"	cell=pvdi    	place_status=fixed)	
	)


       (topright
		(inst  name="CornerCell2"	cell=pfrelr  offset=0 orientation=R90 place_status=fixed )
	)
	
       ( top	
		( inst 	name="abc"		cell=pc3d01      place_status=fixed)	# pin no 11
		( inst  name="xyz"		cell=pc3d01      place_status=fixed)	# pin no 12
		( inst 	name="out3"		cell=pc3o01    place_status=fixed)	# pin no 13
	)



	(bottomright
		(inst  name="CornerCell3"	cell=pfrelr  offset=0 orientation=R0 place_status=fixed )
	) 


        ( right 
		( inst 	name="out0"	cell=pc3o01      place_status=fixed)	# pin no 21
		( inst  name="out1"	cell=pc3o01      place_status=fixed)	# pin no 22	
		( inst  name="out2"	cell=pc3o01    	 place_status=fixed)	# pin no 23		
	
	)


	(bottomleft
		(inst  name="CornerCell4"	 cell=pfrelr  offset=0 orientation=R270 place_status=fixed )
	)


	(bottom 
		( inst 	name="VDDO"	cell=pvda      	place_status=fixed)	# pin no 31
		( inst  name="VSSO"	cell=pv0a      	place_status=fixed)	# pin no 32		
		( inst 	name="VSS"	cell=pv0i       place_status=fixed) 	# pin no 33
	)
)
