class Array
    def msum(start = 0)
        inject(start, &:+)
        
    end
end