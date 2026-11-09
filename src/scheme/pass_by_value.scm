;; Pass-by-Value (In Mode) -- Scheme (GNU Guile)
;; Author: Gabriel Garcia

;; Helper for pretty printing
(define (show label name1 v1 name2 v2)
  (display label)
  (display " - ") (display name1) (display ": ") (display v1)
  (display " ")   (display name2) (display ": ") (display v2)
  (newline))

;; Subprogram: both to-add and to-mult receive copies of the actuals' values
(define (add-one-and-double to-add to-mult)
  (set! to-add (+ to-add 1))
  (set! to-mult (* to-mult 2))
  (show "Inside" "to-add" to-add "to-mult" to-mult))

;; Main program: two local variables, used as the actual parameters
(define (main)
  (let ((x 1)
        (y 4))
    (show "Before" "x" x "y" y)
    (add-one-and-double x y)
    (show "After " "x" x "y" y)))

(main)


