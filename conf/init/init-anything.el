(require 'anything-startup)

(setq 
 anything-idle-delay 0.3
 anything-quick-update t)

(define-key global-map (kbd "C-x b") 'anything)
(define-key global-map (kbd "M-x") 'anything-execute-extended-command)
(define-key global-map (kbd "M-y") 'anything-show-kill-ring)
