;; MELPA packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Load settings init
;; Load this before anything else
(load "~/.emacs.d/init-settings.el")

;; Load display init
(load "~/.emacs.d/init-display.el")

;; Load formatting init
(load "~/.emacs.d/init-format.el")

;; Load shortcuts init
(load "~/.emacs.d/init-shortcuts.el")

;; Load compile settings init
(load "~/.emacs.d/init-compile.el")

;; Load you-complete-me init
;;(load "~/.emacs.d/init-ycm.el")

;; Load Auto-complete init
;;(load "~/.emacs.d/init-ac.el")

;; Load dir-treeview
(require 'dir-treeview)
;; F9 to invoke
(global-set-key (kbd "<f9>") 'dir-treeview)
