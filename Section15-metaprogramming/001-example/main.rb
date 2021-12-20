#custom metaprogramming 
class Baseball
end

#p Baseball.swing

class Baseball
    def swing
        "Homerun"
    end
end

# p Baseball.new.swing

class Baseball
    def swing
        "Strike"
    end
end

p Baseball.new.swing