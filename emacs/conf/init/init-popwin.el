(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

;; anything
(setq anything-samewindow nil)
(push '("*anything*" :height 25) popwin:special-display-config)

;; shell
(push '("*shell*" :height 30) popwin:special-display-config)

(defun toggle-shell-window ()
  (interactive)
  (if (popwin:popup-window-live-p)
      (popwin:close-popup-window)
    (shell)))

(define-key global-map (kbd "s-2") 'toggle-shell-window)
