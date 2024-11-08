;; Set standard indent to 2 for C/C++ and CUDA
(defun my-cpp-mode-hook ()
  (setq-local standard-indent 2)
  (setq-local default-tab-width 2)
  (setq-local tab-width 2)
  (setq-local c-basic-indent 2)
  (setq-local c-default-style "linux" c-basic-offset 2)
  (setq-local indent-tabs-mode 1)
  (local-set-key (kbd "C-M-]") 'apheleia-format-buffer)
  )

;; Catch all the possible C modes
(add-hook 'cc-mode-hook 'my-cpp-mode-hook)
(add-hook 'c-mode-hook 'my-cpp-mode-hook)
(add-hook 'c++-mode-hook  'my-cpp-mode-hook)
(add-hook 'cuda-mode-hook 'my-cpp-mode-hook)


;; I do not know why having this 'before-save-hook added as part
;; of the my-c++-mode-hook function does not work.  To simply
;; get it working just add individually for each mode
(add-hook 'c-mode-hook
          (lambda () (add-hook 'before-save-hook
                               'apheleia-format-buffer nil 'make-it-local)))
(add-hook 'cc-mode-hook
          (lambda () (add-hook 'before-save-hook
                               'apheleia-format-buffer nil 'make-it-local)))
(add-hook 'c++-mode-hook
          (lambda () (add-hook 'before-save-hook
                               'apheleia-format-buffer nil 'make-it-local)))
(add-hook 'cuda-mode-hook
          (lambda () (add-hook 'before-save-hook
                               'apheleia-format-buffer nil 'make-it-local)))
