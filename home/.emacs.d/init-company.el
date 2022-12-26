(require 'company)
(require 'company-c-headers)

;; Enable company mode for completion
(add-hook 'after-init-hook 'global-company-mode)

;; Switch to next backend with double escape
(global-set-key (kbd "<escape> <escape>") #'company-other-backend)

(defun my-cpp-mode-hook ()
  (add-to-list 'company-backends 'company-c-headers))
(add-hook 'c-mode-hook 'my-cpp-mode-hook)
(add-hook 'c++-mode-hook 'my-cpp-mode-hook)

(defun my-python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my-python-mode-hook)
