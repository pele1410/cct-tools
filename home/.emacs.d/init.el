;; MELPA packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Load all init el files in the .emacs.d directory
(mapc 'load (file-expand-wildcards "~/.emacs.d/init-*.el"))

;; Load dir-treeview
(require 'dir-treeview)
;; F9 to invoke
(global-set-key (kbd "<f9>") 'dir-treeview)
