;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))

;; SPACES!
(setq-default indent-tabs-mode nil)

;; make js-2-ide-mode-900000 use 2 spaces
(custom-set-variables  
 '(js2-basic-offset 2)  
 '(js2-bounce-indent-p t)  
)
