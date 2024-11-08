(require 'monky)

(add-hook 'monky-post-command-hook 'diff-hl-update)
