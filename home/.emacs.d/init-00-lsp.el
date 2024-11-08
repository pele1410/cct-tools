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
