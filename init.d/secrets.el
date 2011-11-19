(setq stask-secrets-file
      (expand-file-name "secrets.el" stask-emacs-config-dir))

(when (file-exists-p stask-secrets-file)
  (load stask-secrets-file))
