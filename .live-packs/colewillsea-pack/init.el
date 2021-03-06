(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))
                 
; list the packages you want
(setq package-list '(neotree multiple-cursors string-inflection))



; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Load bindings config
(live-load-config-file "bindings.el")
