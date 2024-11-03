;; Bind the TAB key
(global-set-key (kbd "TAB") 'self-insert-command)

;; Unset Ctrl-Z
(global-unset-key (kbd "C-z"))

;; Disable the stupid audible bell
(setq ring-bell-function `ignore)

;; Auto save configurations
;; Don't keep auto-save files
(setq delete-auto-save-files t)
;; Save to /tmp
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq lock-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Support Wheel Mouse Scrolling
(setq mouse-wheel-mode 1)

;; Delete the selected region
(setq delete-selection-mode 1)

;; Auto update buffers changed on disk
(setq global-auto-revert-mode 1)

;; Default to text mode
(setq default-major-mode 'text-mode)

;; Default file types to modes
;; template files
(add-to-list 'auto-mode-alist '("*\\.in\\'" . jinja2-mode))
;; gdm files
(add-to-list 'auto-mode-alist '("*\\.md\\'" . gfm-mode))
;; xml files
(add-to-list 'auto-mode-alist '("*\\.xml\\'" . nxml-mode))
;; Dockerfile files
(add-to-list 'auto-mode-alist '("Dockerfile" . dockerfile-mode))
;; docker-compose files
(add-to-list 'auto-mode-alist '("docker-compose\\.*" . docker-compose-mode))
;; CUDA files
(add-to-list 'auto-mode-alist '("*\\.cu\\'" . cuda-mode))
;; CMake files
(add-to-list 'auto-mode-alist '("CMakeLists.txt" . cmake-mode))

;; Ignore stuff
(setq completion-ignored-extensions
    (append completion-ignored-extensions
        (quote
        ("~" ".a" ".so" ".o" ".#"))))

;; Enable history mode
(use-package savehist
  :ensure t
  :init
  (savehist-mode))

;; Save place
(save-place-mode 1)

;; Recentf mode changes
(setq recentf-max-saved-items 100
      recentf-exclude '("/tmp/" ".*~"))
(recentf-mode)

;; Enable dir-locals on remote files
;; This allows for docker to work
(setq enable-remote-dir-locals t)
