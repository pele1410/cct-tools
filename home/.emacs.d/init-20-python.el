(require 'python-black)
(require 'flycheck-pycheckers)
(require 'lsp-pyright)
;;(require 'company-jedi)

(with-eval-after-load 'flycheck
  (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))

;; Set standard indent to 4 for python
(defun my-python-mode-hook ()
  (setq-local standard-indent 4)
  (setq-local default-tab-width 4)
  (setq-local tab-width 4)
  (setq-local indent-tabs-mode 1)
  (setq-local lsp-pyright-auto-import-completions t)
  (local-set-key (kbd "C-M-]") 'apheleia-format-buffer)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)

;; I do not know why having this 'before-save-hook added as part
;; of the my-python-mode-hook function does not work.  To simply
;; get it working just add individually for each mode
(add-hook 'python-mode-hook
          (lambda () (add-hook 'before-save-hook
                               'apheleia-format-buffer nil 'make-it-local)))
