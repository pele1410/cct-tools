;; Flycheck configuration using clang-tidy

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-clang-tidy-setup))

;; Always on
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Convenient shortcuts
(global-set-key (kbd "C-M-[") 'flycheck-buffer)
(global-set-key (kbd "C-M-n") 'flycheck-next-error)
(global-set-key (kbd "C-M-p") 'flycheck-previous-error)
(global-set-key (kbd "C-M-l") 'flycheck-list-errors)
