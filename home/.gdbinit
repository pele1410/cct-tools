set print pretty on
set print static off
set print array on

define pvector
    if $argc == 2
        set $elem = $arg0.size()
        if $arg1 >= $arg0.size()
            printf "Error, %s.size() = %d, printing last element:\n", "$arg0", $arg0.size()
            set $elem = $arg1 -1
        end
        print *($arg0._M_impl._M_start + $elem)@1
    else
        print *($arg0._M_impl._M_start)@$arg0.size()
    end
end

document pvector
Print vector contents
Usage: pvector VECTOR_NAME INDEX
VECTOR_NAME is the name of the vector
INDEX is an optional argument specifying the element to display
end


define pm_d
    if $argc == 0
        print *this.m_d.get()
    else
    	if $argc == 2
            print *$arg0.m_d.$arg1()
        else
            print *$arg0.m_d.get()
        end
    end
end

document pm_d
Print private_t contents of an object (defaults to this)
Usage: pm_d OBJECT_NAME GETTER
OBJECT_NAME is an optional argument specifying the name of the object containing private data
GETTER is an optional argument specifying the method of getting the private_t
end
