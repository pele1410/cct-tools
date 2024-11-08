(require 'apheleia)

;; Always enable
(add-hook 'after-init-hook 'apheleia-global-mode)

;; Allow over tramp
(setq apheleia-remote-algorithm 'remote)

(setq apheleia-formatters
      '((apheleia-black . ("black" "--fast" "-"))
      (apheleia-clang-format . ("clang-format" "-style=file" "-")))
      )

(defun my-apheleia-reload-buffer (orig-fun &rest args)
  "Run Apheleia formatter and reload buffer contents."
  (let ((original-point (point)))
    (apply orig-fun args)
    ;; Revert buffer to reload changes made by the formatter
    (revert-buffer :ignore-auto :noconfirm)
    ;; Restore cursor position
    (goto-char original-point)))

(advice-add 'apheleia--run-formatter :around #'my-apheleia-reload-buffer)

;; Example configuration to use docker-black for Python files
(setq apheleia-mode-alist
      '((python-mode . apheleia-black)
      (c-mode . apheleia-clang-format)
      (cc-mode . apheleia-clang-format)
      (c++-mode . apheleia-clang-format)
      (cuda-mode . apheleia-clang-format))
      )
