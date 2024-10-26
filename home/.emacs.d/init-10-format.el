;; Always Untabify
(defun untabify-buffer ()
  "Untabify current buffer"
  (interactive)
  (untabify (point-min) (point-max)))
(add-hook 'before-save-hook 'untabify-buffer)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Set standard indent to 2 for xml
(defun my-xml-mode-hook ()
  (setq-local standard-indent 2)
  (setq-local default-tab-width 2)
  (setq-local tab-width 2)
  (setq-local indent-tabs-mode 1))
(add-hook 'nxml-mode-hook 'my-xml-mode-hook)

;; Ask for a newline at the end of the file
(setq-local require-final-newline 'ask)
