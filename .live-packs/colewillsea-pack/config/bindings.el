;; Place your bindings here.

;; For example:
;;(define-key global-map (kbd "C-+") 'text-scale-increase)
;;(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-unset-key (kbd "M-k"))
(global-set-key (kbd "M-k M-b") 'neotree-toggle)