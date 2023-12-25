;; Apple Silicon 移行時の対応
(defvar browse-url-galeon-program nil)
(defvar browse-url-netscape-program nil)
(defvar browse-url-mosaic-program nil)

(add-to-list 'load-path (concat user-emacs-directory "el-get/el-get"))

(setq 
 el-get-dir (concat user-emacs-directory "el-get")
 el-get-user-package-directory (concat user-emacs-directory "conf/init"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path (concat user-emacs-directory "recipes"))

(el-get 'sync
        '(el-get
          anything
          auto-complete
          popwin
          color-theme-tomorrow
          cperl-mode
          perl-completion
          yaml-mode
          apache-mode
          web-mode
          js2-mode
          scss-mode
          markdown-mode
          rotate
          ))
