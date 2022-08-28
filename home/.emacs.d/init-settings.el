;
; Bind the TAB key
(global-set-key (kbd "TAB") 'self-insert-command)

;; Unset Ctrl-Z
(global-unset-key (kbd "C-z"))

;; Disable the stupid audible bell
(setq ring-bell-function `ignore)

;; Don't keep auto-save files
(setq delete-auto-save-files t)

;; Support Wheel Mouse Scrolling
(mouse-wheel-mode 1)

;; Delete the selected region
(delete-selection-mode 1)

;; Auto update buffers changed on disk
(global-auto-revert-mode 1)

;; Default to fundamental mode
(setq default-major-mode 'fundamental-mode)

;; Default .in files to Jinja
(add-to-list 'auto-mode-alist '("*\\.in\\'" . jinja2-mode))

;; Default .md files to GFM Mode
(add-to-list 'auto-mode-alist '("*\\.md\\'" . gfm-mode))

;; Default .el files to list
(add-to-list 'auto-mode-alist '("*\\.el\\'" . lisp-mode))

;; Ignore stuff
(setq completion-ignored-extensions
    (append completion-ignored-extensions
        (quote
        ("~" ".a" ".so" ".o"))))
(setq completion-ignored-extensions '())

;; Enable history mode
(savehist-mode)

;; Save place
(save-place-mode 1)

;; Recentf mode changes
(setq recentf-max-saved-items 100
      recentf-exclude '("/tmp/" ".*~"))
(recentf-mode)
