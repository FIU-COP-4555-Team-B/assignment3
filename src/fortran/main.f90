program pass_by_result
    implicit none
    integer :: x, y

    x = 1
    y = 4
    print '(A,I0,A,I0)', 'Before - x: ', x, ' y: ', y
    call add_one_and_double(x, y)
    print '(A,I0,A,I0)', 'After - x: ', x, ' y: ', y

contains
    subroutine add_one_and_double(to_add, to_mult)
        integer, intent(out) :: to_add, to_mult

        to_add = 2
        to_mult = 8
        print '(A,I0,A,I0)', 'Inside - to-add: ', to_add, ' to-mult: ', to_mult
    end subroutine add_one_and_double
end program pass_by_result
