(require 'flymake)

(defun display-error-message ()
  (message (get-char-property (point) 'help-echo)))
(defadvice flymake-goto-next-error (after flymake-goto-next-error-display-message activate)
  (display-error-message))
(defadvice flymake-goto-prev-error (after flymake-goto-prev-error-display-message activate)
  (display-error-message))

(add-to-list 'flymake-allowed-file-name-masks '("\\.cgi$" flymake-perl-init))
(add-to-list 'flymake-allowed-file-name-masks '("\\.psgi$" flymake-perl-init))

(define-key global-map (kbd "C-c e") 'flymake-goto-next-error)
