(load "~/.emacs.d/clang-format.el")

;; Set standard indent to 8 for C++
(defun my-c++-mode-hook ()
  (setq standard-indent 8)
  (setq default-tab-width 8)
  (setq tab-width 8)
  (setq c-basic-indent 8)
  (setq c-default-style "linux" c-basic-offset 8)
  (setq indent-tabs-mode 1)
  (require 'clang-format)
;;  (add-hook 'before-save-hook
;;            'clang-format-buffer)
  (defvaralias 'c-basic-offset 'tab-width))

(add-hook 'c-mode-hook 'my-c++-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Set standard indent to 4 for Python
(defun my-python-mode-hook ()
  (setq standard-indent 4)
  (setq default-tab-width 4)
  (setq tab-width 4)
  (setq indent-tabs-mode 1)
  (require 'clang-format)
;;  (add-hook 'before-save-hook
  ;;            'clang-format-buffer))
  )
(add-hook 'python-mode-hook 'my-python-mode-hook)

;; Enable clang-format
(global-set-key (kbd "C-M-]") 'clang-format-buffer)

;; Delete trailing whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Ask for a newline at the end of the file
(setq require-final-newline 'ask)
