class Card
    def initialize(face_value)
        @face_value = face_value
        @face_up = false  
    end
    def face_value
        @face_value
    end
    def face_up
        @face_up
    end

    def hide
        @face_up = false 

    end

    def reveal
        @face_up = true 
    end


    def value 
         if @face_up == false
            p "face down"
            return 0
        else
            p "face up"
            return @face_value
        end
    end
end