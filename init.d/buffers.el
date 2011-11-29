;; buffer management functions
;; copied from 'http://edivad.wordpress.com/2007/05/31/emacs-reload-a-file/'
(defun my-revert-buffer ()
  "Revert buffer without asking for confirmation"
  (interactive "")
  (revert-buffer t t))

(global-set-key [f2] 'my-revert-buffer)

(defvar my-latest-killed-buffer)
(defun my-kill-buffer ()
  "Kill current buffer without confirmation. To undo latest kill call 'my-unkill-buffer'"
  (interactive)
  (setq my-latest-killed-buffer (buffer-file-name))
  (kill-buffer (buffer-name)))

(defun my-unkill-buffer ()
  "Undo the latest buffer kill"
  (interactive)
  (find-file my-latest-killed-buffer))

(global-set-key [f3] 'my-kill-buffer)
(global-set-key [S-f3] 'my-unkill-buffer)
