;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))

(global-unset-key "M-k")
(global-set-key (kbd "M-k M-b") 'neotree-toggle)