program omp
    use OMP_LIB
    integer i, j, k, l, m, o, CHUNK, N
    write (*,*) "hi"

    CHUNK = 1
    N = 20

!$OMP PARALLEL SHARED(CHUNK) PRIVATE(i, j, k, l, m)

    m = omp_get_thread_num()
    o = omp_get_num_threads()
    write (*,*) "m = ", m, "n = ", n

!$OMP DO SCHEDULE (STATIC,1)

    do i = 1, N
        j = i
        k = omp_get_thread_num()
        l = omp_get_num_threads()
        write (*,*) j, k, l, omp_in_parallel()
        call sleep (1)
    enddo

!$OMP END DO
!$OMP END PARALLEL

stop
end
