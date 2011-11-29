(add-to-list 'load-path (expand-file-name "scala-emacs" stask-elisp-dir)) 
(require 'scala-mode-auto)

(add-hook 'scala-mode-hook
          '(lambda ()
             (scala-mode-feature-electric-mode)))
