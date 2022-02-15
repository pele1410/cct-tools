;; Set standard indent to 8
(setq standard-indent 8)
(setq default-tab-width 8)
(setq tab-width 8)
(setq c-basic-indent 8)
(setq c-default-style "linux" c-basic-offset 8)
(setq indent-tabs-mode 1)
(defvaralias 'c-basic-offset 'tab-width)

;; Bind the TAB key
(global-set-key (kbd "TAB") 'self-insert-command)

; Set 95 character width by default
(setq default-frame-alist
      '((width . 95) (height . 40)))

;; Spellcheck comments
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)

;; Support Wheel Mouse Scrolling
(mouse-wheel-mode 1)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Line number in margin (Emacs v26)
;;(global-display-line-numbers-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Unset Ctrl-Z
(global-unset-key (kbd "C-z"))

;; Delete the selected region
(delete-selection-mode 1)

;; Default to fundamental mode
(setq default-major-mode 'fundamental-mode)

;; Ask for a newline at the end of the file
(setq require-final-newline 'ask)

;; Ignore stuff
(setq completion-ignored-extensions
    (append completion-ignored-extensions
        (quote
        ("~" ".a" ".so"".o"))))
;; (setq completion-ignored-extensions '())

;; No splash screen on start
(customize-set-variable 'inhibit-startup-screen 1)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Auto update buffers changed on disk
(global-auto-revert-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(font-use-system-font 1)
 '(inhibit-startup-screen 1)
 '(menu-bar-mode nil)
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

;; Auto-scroll compilation output
(setq-default compilation-scroll-output nil)

;; MELPA packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Load you-complete-me init
;;(load "~/.emacs.d/init-ycm.el")

;; Load Auto-complete init
(load "~/.emacs.d/init-ac.el")

;; Auto-dim non-focus buffers
(setq auto-dim-other-buffers-mode  1)
(setq-default auto-dim-other-buffers-mode  1)

;; Set column enforcement
(global-column-enforce-mode 1)
(setq column-enforce-column 95)
(setq column-enforce-face "red")

;; Default .in files to Jinja
(add-to-list 'auto-mode-alist '("*\\.in\\'" . jinja2-mode))

;; Enable higlghting of ag results
(setq ag-highlight-search 1)

;; Do not require specifying make command with compile command
(setq compilation-read-command nil)

;; Shortcut to compile
(global-set-key "\C-x\C-m" 'compile)

;; Shortcut to ag search
(global-set-key "\C-x\C-a" 'ag)

;; Shortcut to search and replace
(global-set-key "\C-x\C-r" 'replace-string)

;; Disable the stupid audible bell
(setq ring-bell-function `ignore)

;; Enable the clang-format
(load "~/.emacs.d/clang-format.el")
(load "~/.emacs.d/clang-format+.el")
(global-set-key (kbd "C-M-]") 'clang-format-buffer)

;; clang-format before saving
;;(add-hook 'before-save-hook 'clang-format-buffer)
