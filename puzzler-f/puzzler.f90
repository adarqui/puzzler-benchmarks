subroutine parse_argv (n, mat, sz)
    integer mat(20,20), sz
    integer :: i, x, l, r
    character (len=10) :: a
    mat ( :, : ) = 0
    do 10 i = 2, n, 1
        call getarg(i, a)
        read (a, *) l, r
        x = mat(l,r)
        mat(l,r) = x + 1
        sz = sz + 1
    10 continue
    RETURN
end


subroutine print_mat (mat, x, y)
    integer :: mat(20,20), x, y, i, j
    do 10 i = 1, x, 1
        do 20 j = 1, y, 1
            write(*,*) i, j, mat(i,j)
        20 continue
    10 continue
    return
end


integer recursive function solvev(mat, s, v, l, suc) result (res)
    integer :: mat(20,20), s, v, suc, j, i, l
    integer :: a, b, c, d, e

    if ( s .eq. 0 ) then
        suc = suc + 1
        return
    endif


    i = v
    do 10 j = 1, 20, 1
        a = mat(i,j)
        if (a.gt.0) then
            mat(i,j) = a - 1
            b = mat(j,i)
            if (b.gt.0) then
                c = b - 1
            else
                c = 0
            endif

            d = s
            mat(j,i) = c
            if (b.gt.0) then
                e = s - 2
            else
                e = s - 1
            endif

            e = solvev(mat, e, j, l, suc)
            mat(j,i) = b
            s = d
            mat(i,j) = a
        endif
    10 continue


    return
end

subroutine solve1(mat, sz, suc)
    integer :: mat(20,20), suc, i, j, solvev, sz

    do 10 i = 1, 20, 1
       j = solvev (mat, sz, i, 0, suc)
    10 continue
    return
end

subroutine solve2(mat, sz, suc)
    integer :: mat(20,20), suc, i, j, solvev, sz
    integer :: xmat(20,20),xsuc,xsz


!$OMP PARALLEL PRIVATE (i, j, xmat, xsuc, xsz)
!$OMP DO SCHEDULE(STATIC,1)

    do 10 i = 1, 20, 1
       xmat = mat
       xsuc = 0
       xsz = sz
       j = solvev (xmat, xsz, i, 0, xsuc)

       suc = suc + xsuc
    10 continue

!$OMP END DO
!$OMP END PARALLEL

    return
end


subroutine solve3(mat, sz, suc)
    integer :: mat(20,20), suc, i, j, solvev, sz

    do 10 i = 1, 20, 1
       j = solvev (mat, sz, i, 0, suc)
    10 continue
    return
end



subroutine solve4(mat, sz, suc)
    integer :: mat(20,20), suc, i, j, solvev, sz
    integer :: xmat(20,20),xsuc,xsz


!$OMP PARALLEL PRIVATE (i, j, xmat, xsuc, xsz)
!$OMP DO SCHEDULE(STATIC,1)

    do 10 i = 1, 20, 1
       xmat = mat
       xsuc = 0
       xsz = sz
       j = solvev (xmat, xsz, i, 0, xsuc)

       suc = suc + xsuc
    10 continue

!$OMP END DO
!$OMP END PARALLEL

    return
end


program puzzler
    use OMP_LIB
    integer argc, m(20,20), sz/0/, suc/0/, idx/0/
    character (len=4) :: a
    argc = iargc()

    call getarg(1, a)
    read(a, *) idx

    call parse_argv(argc, m, sz)

    if (idx == 0) then
    else if (idx == 1) then
        call solve1(m, sz, suc)
    elseif (idx == 2) then
        call solve2(m, sz, suc)
    elseif (idx == 3) then
        call solve3(m, sz, suc)
    elseif (idx == 4) then
        call solve4(m, sz, suc)
    else
        call exit(-1)
    end if

!    call print_mat(m,20,20)

    write (*,*) "successes: ", suc
    STOP
end
