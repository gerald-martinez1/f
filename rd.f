PROGRAM rd
    IMPLICIT NONE
    INTEGER :: i, n
    REAL :: x, avg, variance, sum = 0.0, sumsq = 0.0
    CALL RANDOM_SEED()
    WRITE(*,*) 'give:'
    READ(*,*) n
    WRITE(*,*) 'do...'
    DO i = 1, n
        CALL RANDOM_NUMBER(x)
        sum = sum + x
        sumsq = sumsq + x * x
    END DO
    avg = sum / n
    variance = (sumsq - sum * sum / n) / n
    WRITE(*,*) 'avg:', avg
    WRITE(*,*) 'var:', SQRT(variance)
END PROGRAM rd
