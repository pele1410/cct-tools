;; Auto-scroll compilation output
(setq-default compilation-scroll-output nil)

;; Do not require specifying make command with compile command
(setq compilation-read-command nil)

;; Spellcheck comments
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(add-hook 'c++-mode-common-hook 'flyspell-prog-mode)
