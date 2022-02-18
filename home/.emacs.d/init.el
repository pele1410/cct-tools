;; Set standard indent to 8
(setq standard-indent 8)
(setq default-tab-width 8)
(setq tab-width 8)
(setq c-basic-indent 8)
(setq c-default-style "linux" c-basic-offset 8)
(setq indent-tabs-mode 1)
(defvaralias 'c-basic-offset 'tab-width)

;; Bind the TAB key

; Bind the TAB key
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
(global-display-line-numbers-mode 1)

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

;; Auto-scroll compilation output
(setq-default compilation-scroll-output nil)

;; MELPA packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Auto-dim non-focus buffers
(setq auto-dim-other-buffers-mode  1)
(setq-default auto-dim-other-buffers-mode  1)

;; Set column enforcement
(global-column-enforce-mode t)
(setq column-enforce-column 95)
;;(setq column-enforce-face "red")

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
(global-set-key (kbd "C-M-]") 'clang-format-buffer)

;; clang-format before saving
;;(add-hook 'before-save-hook 'clang-format-buffer)

;; Load you-complete-me init
;;(load "~/.emacs.d/init-ycm.el")

;; Load Auto-complete init
;;(load "~/.emacs.d/init-ac.el")

;; Load dir-treeview
(require 'dir-treeview)
;; Custom theme to work with my colors
;;(load-theme my-dir-treeview t)
;; F9 to invoke
(global-set-key (kbd "<f9>") 'dir-treeview)

;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(custom-safe-themes
   (quote
    ("f19b07343286f7c9ec38b6eeda39424fba2c8fca28f0b4e69371dc27184a5682" "3eb540a4b1f96ad38167b673b04251c00cce1e3518dcd6306ffb8481d3c33944" "93542f74df5ff59d561cb538aa776a76786baec8cf033c1b2969fb97b9977eb3" "5ca998ef441c2e513b97610926b3a26d2e2f4099dd83e0e3dcf9d8d843d498b5" default)))
 '(dir-treeview-default-icon "F15B")
 '(dir-treeview-expanded-dir-icon "F07C")
 '(dir-treeview-folded-dir-icon "F07B")
 '(dir-treeview-icon-margin-right " ")
 '(dir-treeview-special-icons
   (quote
    ((dir-treeview-is-image-p . "F1C5")
     (dir-treeview-is-audio-p . "F1C7")
     (dir-treeview-is-video-p . "F1C8")
     (dir-treeview-is-archive-p . "F1C6")
     ("\\.pdf$" . "F1C1")
     (file-executable-p . "F013"))))
 '(font-use-system-font 1)
 '(inhibit-startup-screen 1)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (docker-cli docker dir-treeview coverage clang-format bash-completion auto-complete-c-headers ycm column-enforce-mode auto-complete ace-flyspell)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
