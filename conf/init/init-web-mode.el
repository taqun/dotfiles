(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))

(add-hook 'web-mode-hook 
          (lambda()
            (auto-complete-mode t)))
