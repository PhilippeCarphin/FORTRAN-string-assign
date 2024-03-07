program main

    use grid_mod
    use, intrinsic :: iso_c_binding
    use, intrinsic :: iso_fortran_env
    implicit none

    integer :: cmp, err
    character :: chr

    TYPE(tgrid) :: the_grid

    write(error_unit,*) "Program start"

    the_grid%Id(1:1) = "O"
    the_grid%Id(2:2) = "C"
    the_grid%Id(3:3) = "E"
    the_grid%Id(4:4) = "A"
    the_grid%Id(5:5) = "N"
    the_grid%Id(6:6) = c_null_char

    ! the_grid%Id(:) = "OCEAN"

    the_grid%NI = 1337

    cmp = grid_print(the_grid)
    if(cmp .ne. 0) then
        write(error_unit,*) "I wanted 'OCEAN' but got ", the_grid%Id
        stop 1
    endif

end program
