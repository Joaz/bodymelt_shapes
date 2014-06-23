class HeartShape1 < CrystalScad::Printed
	def initialize()
		@h = 20
		@d = 50
		# heart dimensions
		@o = 15
		@p = 44
		@twist = -10
	end

	def part(show)

		res = hull(	circle(d:@d).translate(x:-@o),
							circle(d:@d).translate(x:@o),
							circle(d1:4,d2:4).translate(y:@p)

						)
		r1 = 	circle(d:@d).translate(x:-@o)
		r1 +=	circle(d:@d).translate(y:0,x:@o)
		
		r1 += square([@d*3,@p*2]).center_x

		res *= r1
		
		res = res.linear_extrude(height:@h,twist:@twist,slices:42) 

		
		res
	end


end	
