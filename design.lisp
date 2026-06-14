
;; Variable declaration
(let count :int 10)
(let initial :char #\b)
(let name :string "bob")
(let eligible :bool true)

;; inferred types
(let num 1.0) ;; inferred num as float

;; Function Definition
(defun double :int (number :int)
  (* number 2))

;; Structs
(defstruct vector2

  ;; fields
  ((x :int 0) ; has default value
   (y :int 0)

   idx :int   ; no default value
   ref :int)

  ;; struct functions/procedures that can be called with dot syntax
  (defun add :vector2 (self :vector2 other :vector2)
    (make-vector2 .x (+ self.x other.x)
                  .y (+ self.y other.y))))

(defstruct color
  ((r :byte 0)
   (g :byte 0)
   (b :byte 0)))


;; Enums
(defenum states
  (success ; enums without assigned values
   failure
   partial-success))

(defenum colors
  ((red (make-color .r 255 .g 0 .b 0)) ; enums with assigned values
   (green (make-color .r 0 .g 255 .b 0))))


