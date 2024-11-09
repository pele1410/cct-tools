(require 'apheleia)

;; Always enable
(add-hook 'after-init-hook 'apheleia-global-mode)

;; Allow over tramp
(setq apheleia-remote-algorithm 'remote)

(setq apheleia-formatters
      '((apheleia-black . ("black" "--fast" "-"))
        (apheleia-clang-format . ("clang-format" "-style=file" "-"))
      ))

(setq apheleia-mode-alist
      '(
        ;; Python and friends
        (python-mode . apheleia-black)
        ;; C++ and friends
        (c-mode . apheleia-clang-format)
        (cc-mode . apheleia-clang-format)
        (c++-mode . apheleia-clang-format)
        (cuda-mode . apheleia-clang-format)
        ))

;; Always try to run format on save
(add-hook 'before-save-hook 'apheleia-format-buffer)

;; Force format
(global-set-key (kbd "C-M-]") 'apheleia-format-buffer)
