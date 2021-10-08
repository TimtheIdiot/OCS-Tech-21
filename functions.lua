function aoe.tabletest(t)
    for i, v in ipairs(t) do
        print(i, v)
        minetest.chat_send_all(i)
      end
end


function aoe.placePad(x,z,pos)
    -- The pad is placed baced on the pos and +x and +z direction
    -- Check to make sure that the pad is being placed within range of the ground. 
    -- Make this perportional to the dimensions of the pad. 
    -- TODO: improve on this, test to see if z or x is bigger. 
    a = 2
    local depth = pos.y - math.floor(x*(.8))
    local flag1 = true
    for i = 1, x, 1 do 
        for j = 1, z, 1 do
            local node = minetest.get_node({x=pos.x+i,y=depth,z=pos.z+j})
            minetest.chat_send_all(node.name)
            if node.name == "air" then
               minetest.chat_send_all("Error1")
               flag1 = false
            end

            if flag1 then
                -- place the pad
                for i = 1, x, 1 do 
                    for j = 1, z, 1 do
                        minetest.set_node({x=pos.x+i,y=pos.y,z=pos.z+j}, {name="default:dirt"})
                    end
                end
            end
        end 
    end

end


function aoe.areaClear(x,z,y,pos)

end
