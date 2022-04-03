(provide 'ac-init)

;; Auto-complete C/C++
(require 'auto-complete)
(setq auto-complete-mode  1)
(setq-default auto-complete-mode  1)
;;(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)
;; (setq achead:include-directories
;;  (append '("/usr/include/c++/8"
;;            "/usr/include/c++/8/x86_64-redhat-linux"
;;            "/usr/include/c++/8/backward"
;;            "/usr/lib/gcc/x86_64-redhat-linux/8/include")
;;            achead:include-directories)))

(ac-config-default)

;; Do not start automatically
(setq ac-auto-start nil)
(setq ac-delay 0.3)

;; Do not ignore case
(setq ac-ignore-case nil)

;; Do not limit candidates
(setq ac-candidate-limit nil)

;; Bind Esc Esc to auto-complete
(global-set-key (kbd "<escape> <escape>") 'ac-start)
(define-key ac-completing-map "\t" 'ac-expand)
(define-key ac-completing-map (kbd "<tab>") 'ac-expand)
(define-key ac-completing-map "\r" 'ac-complete)
(define-key ac-completing-map (kbd "<return>") 'ac-complete)

(setq ac-use-menu-map t)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map (kbd "<down>") 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(define-key ac-complete-mode-map (kbd "<up>") 'ac-previous)
(define-key ac-complete-mode-map (kbd "<escape>") 'ac-stop)

;; Do What I Mean Mode
(setq ac-dwim t)

;; Auto-complete Bash
(require 'bash-completion)
  (bash-completion-setup)

;; Better colors
(set-face-background 'ac-candidate-face "darkgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")
