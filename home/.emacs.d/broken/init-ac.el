(provide 'ac-init)

;; Auto-complete C/C++
(require 'auto-complete)
(require 'auto-complete-c-headers)

;; Auto-enable
(add-hook 'after-init-hook 'global-auto-complete-mode)

;; Source lists
(add-to-list 'ac-sources 'ac-source-c-headers)
(setq achead:include-directories
 (append '("/usr/include/c++/8"
           "/usr/include/c++/8/x86_64-redhat-linux"
           "/usr/include/c++/8/backward"
           "/usr/lib/gcc/x86_64-redhat-linux/8/include")
           achead:include-directories))

;; Do not start automatically
;;(setq ac-auto-start nil)
(setq ac-delay 0.3)

;; Ignore case
(setq ac-ignore-case 1)

;; Limit candidates to 10
(setq ac-candidate-limit 10)

;; Bind Esc Esc to auto-complete
(setq ac-auto-start nil)
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
(setq ac-dwim 1)

;; Auto-complete Bash
(require 'bash-completion)
  (bash-completion-setup)

;; Better colors
(set-face-background 'ac-candidate-face "darkgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")
