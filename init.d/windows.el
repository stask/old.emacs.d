;; adopted from http://stackoverflow.com/questions/92971/how-do-i-set-the-size-of-emacs-window/94277#94277
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
        ;; use 180 char wide window for largeish displays
        ;; and smaller 140 column windows for smaller displays
        ;; pick whatever numbers make sense for you
        (if (> (x-display-pixel-width) 1280)
            (add-to-list 'default-frame-alist (cons 'width 180))
          (add-to-list 'default-frame-alist (cons 'width 140)))
        ;; for the height, subtract 44 pixels
        ;; from the screen height (for panels, menubars and 
        ;; whatnot), then divide by the height of a char to
        ;; get the height we want
        (add-to-list 'default-frame-alist
                     (cons 'height (/ (- (x-display-pixel-height) 44)
                                      (frame-char-height)))))))
(set-frame-size-according-to-resolution)

(global-set-key (kbd "s-<left>") 'windmove-left)
(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>") 'windmove-up)
(global-set-key (kbd "s-<down>") 'windmove-down)
