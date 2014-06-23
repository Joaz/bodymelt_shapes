class Shape3 < CrystalScad::Printed
	def initialize()
		@h = 15
		@d = 50
	end

	def part(show)

		res = HeartShape1.new.show
		res -= text(t:"Feel",font:"telo:style=bold").scale(1.4).linear_extrude(height:5).rotate(z:180).translate(x:26,y:-5,z:16)
		res -= text(t:"Good",font:"telo:style=bold").scale(1.4).linear_extrude(height:5).rotate(z:180).translate(x:16,y:10,z:16)
		res -= text(t:"!",font:"telo:style=bold").scale(1.9).linear_extrude(height:5).rotate(z:180).translate(x:-2,y:34,z:16)
		
		
		res
	end


end	
