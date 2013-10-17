(require 'auto-complete-config)
(ac-config-default)

;; 補完メニュー表示時のみ C-n/C-p で補完候補を選択する
(setq ac-use-menu-map t)
(define-key ac-menu-map (kbd "C-n") 'ac-next)
(define-key ac-menu-map (kbd "C-p") 'ac-previous)

;; 標準補完を auto-complete に置き換える
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
