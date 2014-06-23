class Shape1 < CrystalScad::Printed
	def initialize()
		@h = 15
		@d = 50
	end

	def part(show)

		res = HeartShape1.new.show
		
		res -= text(t:"Smile",font:"telo:style=bold").scale(1.9).linear_extrude(height:5).rotate(z:180).translate(x:28,y:5,z:16)
		res -= text(t:"!",font:"telo:style=bold").scale(1.9).linear_extrude(height:5).rotate(z:180).translate(x:2,y:28,z:16)
		
		
		res
	end


end	
