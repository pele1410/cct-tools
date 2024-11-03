(require 'company-irony)
(require 'flycheck-irony)
(require 'irony-eldoc)

(eval-after-load 'flycheck
      '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
