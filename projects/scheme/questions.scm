(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement

(define (zip pairs)
  (list (map car pairs) (map cadr pairs)))


;; Problem 15
;; Returns a list of two-element lists
(define (enumerate s)
  (define (helper s count) 
      (if (null? s) s 
          (cons (list count (car s)) (helper (cdr s) (+ count 1)))))(helper s 0))
  ; END PROBLEM 15

;; Problem 16

;; Merge two lists LIST1 and LIST2 according to COMP and return
;; the merged lists.
(define (helper comp val1 val2) 
            (cond ((= val1 val2) (list val1 val2))
                  ((comp val1 val2) (list val1 val2))
                  (else (list val2 val1))))
(define (merge comp list1 list2)
  ; BEGIN PROBLEM 16
  (cond ((null? list1) list2)
        ((null? list2) list1)
        (else(append (helper comp (car list1) (car list2)) (merge comp (cdr list1)(cdr list2)))))
  )
  ; END PROBLEM 16


(merge < '(1 5 7 9) '(4 8 10))
; expect (1 4 5 7 8 9 10)
(merge > '(9 7 5 1) '(10 8 4 3))
; expect (10 9 8 7 5 4 3 1)

;; Problem 17

(define (nondecreaselist s)
    ; BEGIN PROBLEM 17
    (cond ((null? s) '()) 
          ((= 1 (length s)) (list s))
         ((> (car s) (cadr s))
         (cons (list (car s))
               (nondecreaselist (cdr s))))
        (else
         (let ((next (nondecreaselist (cdr s))))
           (cons (cons (car s)
                       (car next))
                 (cdr next))))))
    ; END PROBLEM 17

;; Problem EC
;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM EC
         expr
         ; END PROBLEM EC
         )
        ((quoted? expr)
         ; BEGIN PROBLEM EC
         expr
         ; END PROBLEM EC
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM EC
           (cons form (cons params (map let-to-lambda body)))
           ; END PROBLEM EC
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM EC
            (append (cons(cons 'lambda (cons (car (zip values)) (map let-to-lambda body))) nil)(map let-to-lambda (cadr (zip values))))
           ; END PROBLEM EC
           ))
        (else
         ; BEGIN PROBLEM EC
         'replace-this-line
         (cons (car expr) (map let-to-lambda (cdr expr)))
         )))

