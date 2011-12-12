(add-to-list 'load-path (expand-file-name "php" stask-elisp-dir))
(require 'php-mode)

(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
