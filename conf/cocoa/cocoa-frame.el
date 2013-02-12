(cond 
 ;; 1440 * 900
 ((= (display-pixel-width) 1440)
  (setq initial-frame-alist
        (append (list
                 '(top . 0)
                 '(left . 0)
                 '(width . 177)
                 '(height . 50))
                initial-frame-alist)))
 ;; 1920 * 1200
 ((= (display-pixel-width) 1920)
  (setq initial-frame-alist
        (append (list
                 '(top . 0)
                 '(left . 0)
                 '(width . 271)
                 '(height . 74))
                initial-frame-alist))))

;; 透明度
(add-to-list 'default-frame-alist '(alpha . 85))

;; split window
(split-window-horizontally)

;; tool-bar off
(tool-bar-mode 0)

;; scroll-bar off
(scroll-bar-mode 0)

;; menu-bar off
(menu-bar-mode 0)
