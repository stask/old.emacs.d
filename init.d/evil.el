(require 'evil)
(evil-mode 1)

(evil-declare-key 'normal org-mode-map "T" 'org-todo) ; mark a TODO item as DONE
(evil-declare-key 'normal org-mode-map "-" 'org-cycle-list-bullet) ; change bullet style
