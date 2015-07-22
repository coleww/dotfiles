;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)