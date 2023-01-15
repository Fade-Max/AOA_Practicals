function golden_section_search(f, a, b, n)
ρ = 1.618-1
d = ρ * b + (1 - ρ)*a
yd = f(d)
for i = 1 : n-1
print(a,"\n")
print(b,"\n")
c = ρ*a + (1 - ρ)*b
yc = f(c)
if yc < yd
b, d, yd = d, c, yc
else
a, b = b, c
end
end
return a < b ? (a, b) : (b, a)
end