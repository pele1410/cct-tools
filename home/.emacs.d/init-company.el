;
; Enable company mode for completion
(add-hook 'after-init-hook 'global-company-mode)

(global-set-key (kbd "<escape> <escape>") 'company-complete)
