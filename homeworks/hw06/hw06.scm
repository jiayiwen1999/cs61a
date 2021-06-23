(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cddr s))
)


(define (sign num)
  (cond ((> num 0) 1)
        ((= num 0) 0)
        (else -1)
  )
)


(define (square x) (* x x))

(define (pow x y)
    
  (cond ((= 0 y) 1) 
        ((= 1 y) x)
        (else(if (= 0 (modulo y 2)) 
    (square (pow x (/ y 2)))
    (* x (square (pow x (/ (- y 1) 2))))
  )))
)

