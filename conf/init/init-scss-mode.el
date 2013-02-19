(autoload 'scss-mode "scss-mode")

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; 自動コンパイルをオフに
(setq scss-compile-at-save nil)

(add-to-list 'ac-modes 'scss-mode)

;; css の property name を補完候補にする
;; ref.) http://d.hatena.ne.jp/sugyan/20120107
(defvar ac-source-css-property-names
  '((candidates . (loop for property in ac-css-property-alist
                        collect (car property)))))

(add-hook 'scss-mode-hook 
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-css-property-names)
            (flymake-mode t)
            ))
