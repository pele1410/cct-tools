;; Enable ido mode
(setq ido-enable-flext-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(setq ido-use-filename-at-point 'guess)

;; Set file order for C++ 
(defun my-c++-mode-hook ()
  (setq-local ido-file-extensions-order '("*.C" "*.H" ".pro" ".ccprf" ".prf")))

(add-hook 'c-mode-hook 'my-c++-mode-hook)
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Ignore things
(setq ido-ignore-extensions t)
(setq ido-ignore-directories '(".hg" ".git"))
(setq ido-ignore-files '(".so"))


