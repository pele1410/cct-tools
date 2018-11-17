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

;; Default directory is work
(setq default-directory "/home/chris.thompson/work/")

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
(setq completion-ignored-extensions '("~" ".o"))

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
 '(column-number-mode 1)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(font-use-system-font 1)
 '(scroll-bar-mode nil)
 '(show-paren-mode 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Load Auto-complete init
;;(load "~/.emacs.d/melpa-init.el")

;; MELPA packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Auto-dim non-focus buffers
(auto-dim-other-buffers-mode 1)

;; Auto-complete C/C++
(require 'auto-complete)
(auto-complete-mode 1)
(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)

;; Do not auto-complete automatically
;;(setq ac-auto-start nil)

;; Just ignore case
(setq ac-ignore-case 1)

;; Bind TAB to auto-complete
(define-key ac-completing-map "\t" 'ac-complete)
(define-key ac-completing-map "\r" nil)

;; Auto-complete Bash
(require 'bash-completion)
  (bash-completion-setup)

;; Auto-complete Better colors
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

;; Set column enforcement
(global-column-enforce-mode t)
(setq column-enforce-column 95)
(setq column-enforce-face "red")
