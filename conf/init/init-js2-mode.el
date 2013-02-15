(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js2-mode))

(defun js-indent-hook ()
  ;; インデント幅を 2 にする
  (setq js2-basic-offset 2
        indent-tabs-mode nil))

(add-hook 'js2-mode-hook 'js-indent-hook)
