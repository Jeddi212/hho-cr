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
