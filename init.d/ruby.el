(require 'ruby-mode)
(add-hook 'ruby-mode-hook
	  '(lambda () (run-hooks 'stask-code-modes-hook)))
(add-hook 'ruby-mode-hook
	  '(lambda () 
      (rvm-activate-corresponding-ruby)
      (setq ruby-deep-indent-paren nil)
      (setq ruby-deep-arglist t)
      (setq c-tab-always-indent nil)))

(require 'rspec-mode)

(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
