(require 'diff-hl)
(require 'diff-hl-flydiff)

;;; Custom command to show me the vcs status of a buffer
;;; Uses magit for git and monky for mercurial

(defun open-vc-status ()
  "Open magit-status if in a Git repo, or monky-status if in an Hg repo."
  (interactive)
  (cond
   ((magit-toplevel) ; Check if in a Git repo
    (magit-status))
   ((vc-backend buffer-file-name) ; Check if under VC
    (let ((backend (vc-responsible-backend buffer-file-name)))
      (cond
       ((eq backend 'Hg) ; If it's Mercurial
        (monky-status))
       ((eq backend 'Git) ; If it's Git
        (magit-status))
       (t (message "No recognized VC system here")))))
   (t (message "Not in a version-controlled repository"))))

(global-set-key (kbd "<f12>") 'open-vc-status)



(global-diff-hl-mode)
(diff-hl-flydiff-mode)

(add-hook 'after-save-hook 'diff-hl-update)
(add-hook 'vc-checkin-hook 'diff-hl-update)
