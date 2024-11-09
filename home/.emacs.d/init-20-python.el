(require 'python-black)
(require 'flycheck-pycheckers)
(require 'lsp-pyright)

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))

;; Set standard indent to 4 for python
(defun my-python-mode-hook ()
  (setq-local standard-indent 4)
  (setq-local default-tab-width 4)
  (setq-local tab-width 4)
  (setq-local indent-tabs-mode 1)
  (setq-local lsp-pyright-auto-import-completions t)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)
