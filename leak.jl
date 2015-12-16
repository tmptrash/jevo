function leak()
	for i=1:100000
		f = function() produce() end
		t = @async f()
		consume(t)

		t.exception = null
		try
		  yieldto(t)
		end
	end
	gc()
end
