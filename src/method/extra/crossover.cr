def pmx(parent1, parent2)
	c1, c2 = Random.new.rand(parent1.size), Random.new.rand(parent2.size)
	return pmx_core(parent1, parent2, c1, c2)	
end

def pmx_core(parent1, parent2, c1, c2)
	offspring1, offspring2 = Array.new(parent1.size){0}, Array.new(parent2.size){0}

  offspring1[c1..c2] = parent2[c1..c2]
  offspring2[c1..c2] = parent1[c1..c2]
	mid1, mid2 = parent2[c1..c2], parent1[c1..c2] 

	parent1.size.times do |i|
		if i < c1 || i > c2
			offspring1[i] = parent1[i]
			search = true
			while search
				temp = mid1.index(offspring1[i])
				if temp
					offspring1[i] = mid2[temp]
				else
					search = false
				end
			end

			offspring2[i] = parent2[i]
			search = true
			while search
				temp = mid2.index(offspring2[i])
				if temp
					offspring2[i] = mid1[temp]
				else
					search = false
				end
			end
		end
	end

	return offspring1, offspring2
end
