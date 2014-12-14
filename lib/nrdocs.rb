require 'rainbow'
# The following code has been known to bring grown ruby programmers to tears   
# abandon all hope ye who enter

def get_ordered_steps(tut)
    begin
        tut.children.sort { |a,b| a[:step] <=> b[:step] }
    rescue ArgumentError
        puts Rainbow("Failed to order ").red.bright+"'#{Rainbow(tut[:title]).yellow}' Make sure you added Step numbers!"
        return tut.children
    end    
    end

def tuts_list
    puts "\n\n\n"+Rainbow("Building NR Tutorials and Documentation Site").yellow.bright
    puts "============================================"
    sorted_tuts = []
    @items.each do |p|
    if p[:tutorial] !=nil
            puts "\n#{Rainbow('Found Tutorial:').green.bright} '#{Rainbow(p[:title]).yellow}'"
            
            children = get_ordered_steps(p)
            children.each do |c|
                puts Rainbow("   Step: [#{Rainbow(c[:step]).red}]: ").bright+"'#{Rainbow(c[:title]).yellow}'"
            end
            sorted_tuts.push(p)
            
#        pa.push p
    end
    end
    sorted_tuts = sorted_tuts.sort {|a,b| a[:ordering] <=> b[:ordering] }
    
    puts Rainbow("\nFinal Tutorial Ordering").yellow.bright
    
    sorted_tuts.each do |tut|
        puts Rainbow("   [#{Rainbow(tut[:ordering]).red}]: ").bright+"'#{Rainbow(tut[:title]).yellow}'"
    end

    puts sorted_tuts[0].identifier
    puts "\n\n"
    return sorted_tuts
   end
   
def get_my_steps(me)
    return get_ordered_steps(me.parent)
    end

def next_step(me)
    my_steps = get_my_steps(me);
    my_index = my_steps.find_index(me)
    if my_index+1<my_steps.size
        return my_steps[my_index+1]
    else
        
    end
    me
    end
    
def last_step(me)
    my_steps = get_my_steps(me);
    my_index = my_steps.find_index(me)
    if my_index-1>=0
        return my_steps[my_index-1]
    else
    
    end
    me
    end

def has_next(me)
    my_steps = get_my_steps(me);
    my_index = my_steps.find_index(me)
    if my_index+1<my_steps.size
        return true
    end
    false
    end
    
def has_last(me)
    my_steps = get_my_steps(me);
    my_index = my_steps.find_index(me)
    if my_index-1>=0
        return true
    end
    false
    end
    
