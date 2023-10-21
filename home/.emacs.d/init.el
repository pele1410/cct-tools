;; MELPA packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Load all init el files in the .emacs.d directory
(mapc 'load (file-expand-wildcards "~/.emacs.d/init-*.el"))

;; Load dir-treeview
(require 'dir-treeview)
;; F9 to invoke
(global-set-key (kbd "<f9>") 'dir-treeview)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen 1)
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (magit git-modes git org rainbow-mode helm company-jedi company-anaconda company-c-headers company-fuzzy company-qml company-ycm company-ycmd company jinja2-mode sudo-edit ycm ov markdown-mode flymd docker-cli docker dir-treeview column-enforce-mode clang-format bash-completion ag ace-flyspell)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'org)
