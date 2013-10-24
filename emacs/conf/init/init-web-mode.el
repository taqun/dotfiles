(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))

(setq web-mode-tag-auto-close-style 2)

(add-hook 'web-mode-hook 
          (lambda()
            (auto-complete-mode t)
            (setq ac-sources '(ac-source-css-property
                               ac-source-dictionary
                               ac-source-filename))))
