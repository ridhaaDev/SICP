#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

;(sum-of-squares 3 4)

;(define (absolute x)
;  (cond
;    ((> x 0) x)
;    ((= x 0) 0)
;    ((< x 0) (- x))
;    ))

;(define (absolute x)
;  (cond
;    ((< x 0) (- x))
;    (else x)))

(define (absolute x)
  (if (< x 0)
      (- x)
      x
  ))

;(absolute 7)

(define (greater-equal x y)
  (not (< x y)))

;(greater-equal 4 4)

; Exercises

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