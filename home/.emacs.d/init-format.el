;; Untabify convenience
(defun untabify-buffer ()
  "Untabify current buffer"
  (interactive)
  (untabify (point-min) (point-max)))


;; Set standard indent to 8 for C++
(defun my-c++-mode-hook ()
  (setq-local standard-indent 8)
  (setq-local default-tab-width 8)
  (setq-local tab-width 8)
  (setq-local c-basic-indent 8)
  (setq-local c-default-style "linux" c-basic-offset 8)
  (setq-local indent-tabs-mode 1)
  (require 'clang-format)
  (add-hook 'before-save-hook
            'clang-format-buffer nil)
  (add-hook 'before-save-hook
            'untabify-buffer nil)
(defvaralias 'c-basic-offset 'tab-width))

(add-hook 'c-mode-hook 'my-c++-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Set standard indent to 4 for python
(defun my-python-mode-hook ()
  (setq-local standard-indent 4)
  (setq-local default-tab-width 4)
  (setq-local tab-width 4)
  (setq-local indent-tabs-mode 1)
  (add-hook 'before-save-hook
            'untabify-buffer nil))
(add-hook 'python-mode-hook 'my-python-mode-hook)

;; Set standard indent to 2 for xml
(defun my-xml-mode-hook ()
  (setq-local standard-indent 2)
  (setq-local default-tab-width 2)
  (setq-local tab-width 2)
  (setq-local indent-tabs-mode 1)
  (add-hook 'before-save-hook
            'untabify-buffer nil))
(add-hook 'nxml-mode-hook 'my-xml-mode-hook)

;; Enable clang-format
(global-set-key (kbd "C-M-]") 'clang-format-buffer)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ask for a newline at the end of the file
(setq-local require-final-newline 'ask)
