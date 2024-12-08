program add
    implicit none
    print *, "Sum is ", add_two_numbers(5, 7)
contains
    function add_two_numbers(a, b) result(sum)
        integer, intent(in) :: a, b
        integer :: sum
        sum = a + b
    end function add_two_numbers
end program add
