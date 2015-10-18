(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(defun my-js2-hook ()
  ;; インデント幅を 2 にする
  (setq js2-basic-offset 2
        indent-tabs-mode nil
        js2-strict-missing-semi-warning nil))

(add-hook 'js2-mode-hook 'my-js2-hook)

(custom-set-faces
 '(js2-warning
   ((((class color)
      (background dark))
     (:background "#ff0000" :foreground "#ffffff"))
    (((class color)
      (background light))
     (:background "#ff0000" :foreground "#ffffff"))
    (t ())
    )))
