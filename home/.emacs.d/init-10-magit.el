(require 'magit)

(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
