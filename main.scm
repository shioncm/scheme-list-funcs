;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; File name: main.scm
; language: Scheme

; author: Shion Mizuguchi <shion.mizuguchi@cooper.edu>
; org: The Cooper Union
; date: 2022-08-12
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (remove-ith i l)
  (cond ((or (< i 0) (> i (- (length l) 1)))
         l)
        ((zero? i)
         (cdr l))
        (else
         (cons (car l)
               (remove-ith (sub1 i) (cdr l) ) ))))

(define (get-ith i l)
  (cond ((or (< i 0) (> i (- (length l) 1)))
         '())
        ((zero? i)
         (car l))
        (else
         (get-ith (sub1 i) (cdr l) ))))

(define (combine-elements il l)
  (map (lambda (n) (get-ith n l)) il))
