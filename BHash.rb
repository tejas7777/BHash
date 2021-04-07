
class BHash

    def initialize(hmap = nil)
        @hash = Hash.new()
        @rhash = Hash.new()
        if hmap
          hmap.each do |r,s|
                add(r,s)
          end
        end
    end


    def find(h)
        if @hash.has_key?(h)
            return @hash[h]
        elsif @rhash.has_key?(h)
            return @rhash[h]
        end
        return nil
    end

    def add(r, s = nil)
        if s
          if not present?(r)
          else
              raise "Error! #{r} already Present"
              return
            end
            if not present?(s)
            else
              raise "Error! #{s} already Present"
              return
            end
            @hash[r] = s
            @rhash[s] = r
          elsif r.is_a?(Hash)
            r.each do |r,s|
                  add(r,s)
            end
          else
              raise "Error! Invalid Type"
        end
    end

    def delete(h)
        if @hash.has_key?(h)
            value = @hash[h]
            @hash.delete(h)
            @rhash.delete(value)

        elsif @rhash.has_key?(h)
            value = @rhash[h]
            @rhash.delete(h)
            @hash.delete(value)

        end
    end

    def print()
        puts @hash.to_s
    end

    def present?(h)
        if @hash.has_key?(h)
            return true
        end
        if @rhash.has_key?(h)
            return true
        end
        return false
    end

    def update_key(m,n)
      if present?(n)
        raise "Error! #{n} already present"
        return
      end
        if @hash.has_key?(m)
            value = @hash[m]
            @hash.delete(m)
            @hash[n] = value
            @rhash[value] = n
        elsif @rhash.has_key?(m)
            value = @rhash[m]
            @rhash.delete(m)
            @rhash[n] = value
            @hash[value] = n
        end
    end
    def update_value(r,s)
        if present?(s)
          raise "Error! #{s} already present"
          return
        end
        if @hash.has_key?(r)
            value = @hash[r]
            @hash[r] = s
            @rhash.delete(value)
            @rhash[s] = r
        elsif @rhash.has_key?(r)
            value = @rhash[r]
            @rhash[r] = s
            @hash.delete(value)
            @hash[s] = r
        end
    end
end
