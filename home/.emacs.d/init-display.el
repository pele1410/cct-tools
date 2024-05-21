;; Highlight current line
(global-hl-line-mode 1)

; Set 95 character width by default
(setq default-frame-alist
      '((width . 95) (height . 40)))

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Line number in margin (Emacs v26)
(global-display-line-numbers-mode 1)

;; No splash screen on start
(customize-set-variable 'inhibit-startup-screen 1)
(customize-set-variable 'initial-scratch-message nil)

;; Hide the various bar
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'tooltip-mode nil)

;; Show paren
(customize-set-variable 'show-paren-mode t)

;; Dark theme
(customize-set-variable 'custom-enabled-themes (quote (tsdh-dark)))

;; Auto-dim non-focus buffers
(setq auto-dim-other-buffers-mode  1)
(setq-default auto-dim-other-buffers-mode  1)

;; Set column enforcement
(global-column-enforce-mode t)
(setq column-enforce-column 95)
;;(setq column-enforce-face "red")

;; Enable higlghting of ag results
(setq ag-highlight-search 1)

;; Enable highlighting of search results
(setq search-highlight t)

;; Custom themes to work with my colors
(setq custom-theme-directory "~/.emacs.d/themes")

;; Customize frame title to show _where_ I am
(setq-default frame-title-format
              '(:eval
                (format "%s"
                        (cond
                         (buffer-file-name
                          (file-name-directory buffer-file-name))
                         (dired-directory dired-directory)
                         (t "")))))

;; Disable popups
(setq use-dialog-box nil)
