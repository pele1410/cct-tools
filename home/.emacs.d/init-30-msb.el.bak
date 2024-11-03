(defun msb-cpp-mode-hook ()
  ;; Set compile command to use task file
  (setq-local compile-command "task build"))

;; Catch all the possible C modes
(add-hook 'cc-mode-hook 'msb-cpp-mode-hook)
(add-hook 'c-mode-hook 'msb-cpp-mode-hook)
(add-hook 'c++-mode-hook  'msb-cpp-mode-hook)
(add-hook 'cuda-mode-hook 'msb-cpp-mode-hook)
