program omp
    integer i, j, k, l, CHUNK
    write (*,*) "hi"

    CHUNK = 1

!$OMP PARALLEL SHARED(CHUNK) PRIVATE(i, j, k, l)

    write (*,*) omp_get_thread_num()

!$OMP DO SCHEDULE (STATIC, CHUNK)

    do i = 1, 20, 1
        j = i
        k = omp_get_thread_num()
        l = omp_get_num_threads()
        write (*,*) j, k, l
        call sleep (1)
    enddo

!$OMP END DO NOWAIT
!$OMP END PARALLEL

stop
end
