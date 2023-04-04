def insertion(r, i, j)
	r[i+1..j], r[i] = r[i...j], r[j]
	return r
end

def inverse(r, i, j)
	r[i..j] = r[i..j].reverse
	return r
end

def swap(r, i, j)
	r[i], r[j] = r[j], r[i]
	return r
end

def two_opt_insertion(route, distances)
	improved = True
	while improved
		improved = false

		(route.size - 2).times do |i|
			((i + 2)..(route.size - 2)).each do |j|
				len_delta = - distances[route[i - 1]][route[i]] \
                    - distances[route[j - 1]][route[j]] \
                    - distances[route[j]][route[j + 1]] \
                    + distances[route[i - 1]][route[j]] \
                    + distances[route[j]][route[i]] \
                    + distances[route[j - 1]][route[j + 1]]

				if len_delta < 0
					route = insertion(route, i, j)
					improved = true
				end
			end
		end
	end

	return route
end

def two_opt_inverse(route, distances)
	improved = True
	while improved
		improved = false

		(1..(route.size - 3)).each do |i|
			((i + 1)..(route.size - 2)).each do |j|
				len_delta = - distances[route[i - 1]][route[i]] - distances[route[j]][route[j + 1]] \
                    + distances[route[i - 1]][route[j]] + distances[route[i]][route[j + 1]]

				if len_delta < 0
					route = inverse(route, i, j)
					improved = true
				end
			end
		end
	end

	return route
end

def two_opt_swap(route, distances)
	improved = True
	while improved
		improved = false

		(1..(route.size - 1)).each do |i|
			((i + 1)..(route.size - 2)).each do |j|
				if i + 1 == j
          len_delta = - distances[route[i - 1]][route[i]] - distances[route[j]][route[j + 1]] \
                      + distances[route[i - 1]][route[j]] + distances[route[i]][route[j + 1]]
        else
          len_delta = - distances[route[i - 1]][route[i]] - distances[route[i]][route[i + 1]] \
                      - distances[route[j - 1]][route[j]] - distances[route[j]][route[j + 1]] \
                      + distances[route[i - 1]][route[j]] + distances[route[j]][route[i + 1]] \
                      + distances[route[j - 1]][route[i]] + distances[route[i]][route[j + 1]]

				if len_delta < 0
					route = swap(route, i, j)
					improved = true
				end
			end
		end
	end

	return route
end

