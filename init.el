;; emacs configuration
;; inspired by Avdi Grimm's config

;; Directories and file names
(setq stask-emacs-init-file (or load-file-name buffer-file-name))
(setq stask-emacs-config-dir
      (file-name-directory stask-emacs-init-file))
(setq user-emacs-directory stask-emacs-config-dir)
(setq stask-elisp-dir (expand-file-name "elisp" stask-emacs-config-dir))
(setq stask-elisp-external-dir
      (expand-file-name "external" stask-elisp-dir))
(setq stask-init-dir
      (expand-file-name "init.d" stask-emacs-config-dir))

;; Load all elisp files in ./init.d
(if (file-exists-p stask-init-dir)
    (dolist (file (directory-files stask-init-dir t "\\.el$"))
      (load file)))

;; Setup 'custom' system
(setq custom-file
      (expand-file-name "emacs-customizations.el" stask-emacs-config-dir))
(load custom-file)

