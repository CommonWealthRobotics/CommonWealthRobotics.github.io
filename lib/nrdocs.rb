require 'rainbow'
# The following code has been known to bring grown ruby programmers to tears   
# abandon all hope ye who enter

def get_ordered_steps(tut)
    begin
        st = Array.new(tut.children)
        st.each do |a|
            if a.binary?
                #puts a
                st.delete a
            end
        end
        st.sort { |a,b| a[:step] <=> b[:step] }
    rescue ArgumentError
        puts Rainbow("Failed to order ").red.bright+"'#{Rainbow(tut[:title]).yellow}' Make sure you added Step numbers!"
        return tut.children
    end    
    end

def tuts_list
    puts "\n\n\n"+Rainbow("Building NR Tutorials and Documentation Site").yellow.bright
    puts "============================================"
    sorted_tuts = []
    $menuitems = []
    @items.each do |p|
    if p[:tutorial] !=nil
            puts "\n#{Rainbow('Found Tutorial:').green.bright} '#{Rainbow(p[:title]).yellow}'"
            
            children = get_ordered_steps(p)
            children.each do |c|
                puts Rainbow("   Step: [#{Rainbow(c[:step]).red}]: ").bright+"'#{Rainbow(c[:title]).yellow}'"
            end
            sorted_tuts.push(p)
            
#        pa.push p
    elsif p[:menu] != nil
        p[:menuorder] == 999 if p[:menuorder]==nil
        $menuitems.push(p)
        
    end
    end

    sorted_tuts = sorted_tuts.sort {|a,b| a[:ordering] <=> b[:ordering] }
    
    puts Rainbow("\nFinal Tutorial Ordering").yellow.bright
    
    sorted_tuts.each do |tut|
        puts Rainbow("   [#{Rainbow(tut[:ordering]).red}]: ").bright+"'#{Rainbow(tut[:title]).yellow}'"
    end
    
    $menuitems=$menuitems.sort {|a,b| a[:menuorder] <=> b[:menuorder] }
    puts Rainbow("\nMenu bar Contents are").yellow.bright
    get_menu.each do |men|
        puts Rainbow("   [#{Rainbow(men[:menuorder]).red}]: ").bright+"[#{Rainbow(get_menu_name(men)).white}] '#{Rainbow(men[:title]).yellow}'"
    end

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
    
def has_image(me)
    if me[:image] != nil
        return true
    end
    false
    end
    
def get_image(me)
    if me[:image] != nil
        return relative_path_to(me)+me[:image]
    end
    ""
    end
    
def get_title(me)
    if me[:title] != nil
        return me[:title]
    else
        return me.raw_filename
    end
    end
    
def get_first(me)
    steps = get_ordered_steps(me)
    if steps.first != nil
        return steps.first
    end
    me.parent
    end
    
def get_menu()
    $menuitems
    end
    
def get_menu_name(me)
    if me[:menuname] == nil
        return get_title me
    else
        return me[:menuname]
    end
    end
