class Bodymelt_shapeAssembly < CrystalScad::Assembly

	def part(show)
	
	  w = 4
	  res = cube([x=105,y=150,@h=30]).center_xy.translate(z:-1.5)
	  res -= cube([x-w,y-w,@h=30]).center_xy
	
#		res += Shape1.new.show.translate(y:-42,x:-8)
#		res += Shape2.new.show.rotate(z:180).translate(x:8,y:40)
		
		res += Shape3.new.show.translate(y:-42,x:-8)
		res += Shape4.new.show.rotate(z:180).translate(x:8,y:40)

		
	end

end
