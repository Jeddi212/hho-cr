def insertion(r, i, j)
	r[i+1..j], r[i] = r[i...j], r[j]
	return r
end
