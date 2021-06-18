def even_next(n)
    n / 2
end

def odd_next(n)
    3 * n + 1
end

def next_value(n)
    n % 2 == 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
    sequence = []
    while n != 1 
        sequence << n 
        n = next_value(n)
    end 
    sequence << n 
end

def longest_collatz
    longest_chain_length = 0 
    longest_chain_start = 0 
    (500000..1000000).each do |starting| 
        current_length = collatz(starting).length 
        if (current_length > longest_chain_length)
            longest_chain_length = current_length 
            longest_chain_start = starting 
        end 
    end 
    longest_chain_start 
end