(define-fungible-token flash-token)

(define-map user-scores principal uint)

(define-constant err-invalid (err u100))
(define-constant err-unauthorized (err u101))

;; Function 1: Reward user with tokens for correct set
(define-public (reward-user (user principal) (points uint))
  (begin
    ;; Removed invalid is-standard-principal check, as all principals are valid in this context
    (asserts! (> points u0) err-invalid)
    (let (
      (current-score (default-to u0 (map-get? user-scores user)))
      (new-score (+ current-score points))
    )
      (map-set user-scores user new-score)
      (try! (ft-mint? flash-token points user))
      (ok true)
    )
  )
)

;; Function 2: Get user's total score
(define-read-only (get-score (user principal))
  (ok (default-to u0 (map-get? user-scores user)))
)
