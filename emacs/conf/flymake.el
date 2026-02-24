(require 'flymake)

(defun display-error-message ()
  (message (get-char-property (point) 'help-echo)))
(defadvice flymake-goto-next-error (after flymake-goto-next-error-display-message activate)
  (display-error-message))
(defadvice flymake-goto-prev-error (after flymake-goto-prev-error-display-message activate)
  (display-error-message))

(defun flymake-perl-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "perl" (list "-MProject::Libs" "-wc" local-file))))

;; (add-to-list 'flymake-allowed-file-name-masks '("\\.cgi$" flymake-perl-init))
;; (add-to-list 'flymake-allowed-file-name-masks '("\\.psgi$" flymake-perl-init))

(define-key global-map (kbd "C-c e") 'flymake-goto-next-error)
