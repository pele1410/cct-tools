(require 'projectile)

;; Stop emacs from complaining about projectile
(customize-set-variable
 'safe-local-variable-values
 '((projectile-project-compilation-cmd . ". ${ST_EXTERNAL_INSTALL_DIR}/setup.sh && task build")
   (compile-command . ". ${ST_EXTERNAL_INSTALL_DIR}/setup.sh && task build")
   (projectile-compilation-dir . ".")))
