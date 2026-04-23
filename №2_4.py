N, V = map(int, input("Введите N и V: ").split())
R = list(map(int, input("Введите расстояния R: ").split()))

fuel = V
stops = 0

for dist in R:
    if dist > V:
        print(0)
        exit()
    
    if fuel < dist:
        stops += 1
        fuel = V
    
    fuel -= dist

print(stops)