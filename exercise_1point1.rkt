#lang sicp
; Exercises
;===============================================

;1.1)
;Evaluate (I used the substition model here)
;10 -> 10
;(+ 5 3 4) -> 12
;(- 9 1) -> 8
;(/ 6 2) -> 3
;(+ (* 2 4) (- 4 6)) -> 6

;(define a 3)-> undefined
;(define b (+ a 1)) -> undefined
;(+ a b (* a b)) -> 19
;(= a b) -> false

;(if (and (> b a) (< b (* a b)))
;    b
;    a) -> 4

;(cond ((= a 4) 6)
;      ((= b 4) (+ 6 7 a))
;      (else 25)) -> 16

;(+ 2 (if (> b a) b a)) -> 6
;(* (cond ((> a b) a)
;         ((< a b) b)
;         (else -1))
;   (+ a 1)) -> 16

; 1.2)
;Translate the image into prefix form:
;(My interpretation of the image)
;5 + a half + (2 - (3 - (6 + a third))
;                over
;3 (6 - 2)(2 - 7)
; prefix notation:

;(/ (+ 5 (/ 1 2)
;      
;      (- 2
;         (- 3
;            (+ 6 (/ 1 3)))))
;   (* 3
;      (- 6 2)
;      (- 2 7)))

;Exercise 1.3
; Sum of squares already defined above
(define (sum-of-largest-squares a b c)
  (cond ((and (and (>= a b) (>= a c))
             (and (>= b c)))
             (sum-of-squares a b)
         )
        ((and (and (>= b a) (>= b c))
             (and (>= c a)))
             (sum-of-squares b c)
         )
        (else (sum-of-squares a c))
        )
  )

(sum-of-largest-squares 4 2 3)

;Exercise 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;This procedure appears to condtionally add or subtract a from b based on
;if b is positive or negative. Meaning it will always add the postive
;version of b

; Exercise 1.5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; expression ben runs:
;(test 0 (p))
; My understanding:
; Applicative order - evaluates all the inner expressions and continues to branch outward
;(test 0 (p))

;should infinitely call p, since in
;(test 0 (p))
;
;p is called with 0 arguments, not supplied as a value
;which would be the function definition.
;As such, p is a recursive function with no base-case.

; Normal order - evaluates nothing until every variable is given a constant
; and expanded.
;(test 0 (p))

;This time it should delay calling (p) until the body is evaluated
;Evaluating:
;(if (= 0 0)
;    0
;    (p)
;    )
;
;The expression evalutes to true, and 0 will be returned, kind of short-circuiting
;and never evaluating (p)