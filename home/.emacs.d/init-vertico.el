;; Vertico completion
(use-package vertico
  :ensure t
  :init
  (vertico-mode)
  ;; Grow and shrink the Vertico minibuffer
  (setq vertico-resize t)
  ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
  (setq vertico-cycle t)
  )

(use-package marginalia
  :after vertico
  :ensure t
  :init
  (marginalia-mode))
