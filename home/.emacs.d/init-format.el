;; Set standard indent to 8
(setq standard-indent 8)
(setq default-tab-width 8)
(setq tab-width 8)
(setq c-basic-indent 8)
(setq c-default-style "linux" c-basic-offset 8)
(setq indent-tabs-mode 1)
(defvaralias 'c-basic-offset 'tab-width)

;; Enable the clang-format
(load "~/.emacs.d/clang-format.el")
(global-set-key (kbd "C-M-]") 'clang-format-buffer)

;; clang-format before saving
;;(add-hook 'before-save-hook 'clang-format-buffer)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ask for a newline at the end of the file
(setq require-final-newline 'ask)
