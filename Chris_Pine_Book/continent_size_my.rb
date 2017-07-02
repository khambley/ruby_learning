# This is just counting up all the land. Mine doesn't work, need to 

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

def continent_size world, x, y
     size = 1
     world.each do |x| 
          x.each do |y|
            if y == 'land'
               size = size + 1
            else
               return 
            end
          end
     end
     size
end
puts continent_size(world, 5, 5)
