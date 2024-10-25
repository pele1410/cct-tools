;; Always Untabify
(defun untabify-buffer ()
  "Untabify current buffer"
  (interactive)
  (untabify (point-min) (point-max)))
(add-hook 'before-save-hook 'untabify-buffer)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Set standard indent to 2 for C++ and CUDA
(defun my-c++-mode-hook ()
  (setq-local standard-indent 2)
  (setq-local default-tab-width 2)
  (setq-local tab-width 2)
  (setq-local c-basic-indent 2)
  (setq-local c-default-style "linux" c-basic-offset 2)
  (setq-local indent-tabs-mode 1))

(add-hook 'c-mode-hook 'my-c++-mode-hook)
(add-hook 'c++-mode-hook  'my-c++-mode-hook)
(add-hook 'cuda-mode-hook 'my-c++-mode-hook)

;; I do not know why having this 'before-save-hook added as part
;; of the my-c++-mode-hook function does not work.  To simply
;; get it working just add individually for each mode
(add-hook 'c-mode-hook
          (lambda () (add-hook 'before-save-hook
            'clang-format-buffer nil 'make-it-local)))
(add-hook 'c++-mode-hook
          (lambda () (add-hook 'before-save-hook
            'clang-format-buffer nil 'make-it-local)))
(add-hook 'cuda-mode-hook
          (lambda () (add-hook 'before-save-hook
            'clang-format-buffer nil 'make-it-local)))

;; Set standard indent to 4 for python
(defun my-python-mode-hook ()
  (setq-local standard-indent 4)
  (setq-local default-tab-width 4)
  (setq-local tab-width 4)
  (setq-local indent-tabs-mode 1))
(add-hook 'python-mode-hook 'my-python-mode-hook)

;; Set standard indent to 2 for xml
(defun my-xml-mode-hook ()
  (setq-local standard-indent 2)
  (setq-local default-tab-width 2)
  (setq-local tab-width 2)
  (setq-local indent-tabs-mode 1))
(add-hook 'nxml-mode-hook 'my-xml-mode-hook)

;; Enable clang-format
(global-set-key (kbd "C-M-]") 'clang-format-buffer)

;; Ask for a newline at the end of the file
(setq-local require-final-newline 'ask)
