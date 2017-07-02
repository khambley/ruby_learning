#    These are just to make the map easier for me to read. 
#   " M" is visually more dense than "o".

M = 'land'
o = 'water'

world = [ [o, o, o, o, o, o, o, o, o, o, o], #0 array
          [o, o, o, o, M, M, o, o, o, o, o], #1 array
          [o, o, o, o, o, o, o, o, M, M, o], #2 array
          [o, o, o, M, o, o, o, o, o, M, o], #3 array
          [o, o, o, M, o, M, M, o, o, o, o], #4 array
          [o, o, o, o, M, M, M, M, o, o, o], #5 array
          [o, o, o, M, M, M, M, M, M, M, o], #6
          [o, o, o, M, M, o, M, M, M, o, o],
          [o, o, o, o, o, o, M, M, o, o, o],
          [o, M, o, o, o, M, o, o, o, o, o],
          [o, o, o, o, o, o, o, o, o, o, o]]
puts world[5][5]

def continent_size world, x, y 
  if world[y][x] != 'land'
    return 0
  end
  size = 1
  world[y][x] = 'counted land'
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x-1, y-1)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x, y-1)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x+1, y-1)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x-1, y)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x+1, y)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x-1, y+1)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x, y+1)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  size = size + continent_size(world, x+1, y+1)
  puts size.to_s + ' x = ' + x.to_s + ' y = ' + y.to_s
  return size
end
continent_size(world, 5, 5)