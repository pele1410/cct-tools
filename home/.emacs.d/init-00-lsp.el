(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp)
         (c++-mode . lsp))
  :commands lsp)

(use-package lsp-pyright
  :ensure t
  :config
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))

;; Convenient keyboard shortcuts to jump around
(with-eval-after-load 'lsp-mode
  ;; Jump to declaration
  (define-key lsp-mode-map (kbd "C-S-<f5>") #'lsp-find-declaration)
  ;; Jump to definition
  (define-key lsp-mode-map (kbd "C-<f5>") #'lsp-find-definition)
  ;; Describe
  (define-key lsp-mode-map (kbd "C-<f1>") #'lsp-describe-thing-at-point)
  )
