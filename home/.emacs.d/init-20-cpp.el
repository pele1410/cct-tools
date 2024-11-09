(require 'lsp-mode)

;; Set standard indent to 2 for C/C++ and CUDA
(defun my-cpp-mode-hook ()
  (setq-local standard-indent 2)
  (setq-local default-tab-width 2)
  (setq-local tab-width 2)
  (setq-local c-basic-indent 2)
  (setq-local c-default-style "linux" c-basic-offset 2)
  (setq-local indent-tabs-mode 1)
  )

;; Catch all the possible C modes
(add-hook 'cc-mode-hook 'my-cpp-mode-hook)
(add-hook 'c-mode-hook 'my-cpp-mode-hook)
(add-hook 'c++-mode-hook  'my-cpp-mode-hook)
(add-hook 'cuda-mode-hook 'my-cpp-mode-hook)
