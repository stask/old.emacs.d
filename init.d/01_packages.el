(setq stask-required-packages
      (list 'xml-rpc 'magit 'gh 'inf-ruby 'paredit))

(require 'eieio)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("marmalade" . "http://marmalade-repo.org/packages/")
	("Tromey" . "http://tromey.com/elpa/")))
(package-initialize)
(dolist (package stask-required-packages)
  (when (not (package-installed-p package))
    (package-refresh-contents)
    (package-install package)))
