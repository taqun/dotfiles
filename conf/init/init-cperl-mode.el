(defalias 'perl-mode 'cperl-mode)

(setq auto-mode-alist (append  auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.cgi$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.pm$" . cperl-mode))

(setq cperl-indent-level 4)
(setq cperl-continued-statement-offset 4)
(setq cperl-brace-offset -4)
(setq cperl-label-offset -4)
(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset -4)
(setq cperl-tab-always-indent t)
(setq cperl-highlight-variables-indiscriminately t)


(add-hook 'cperl-mode-hook
          (lambda()
            (flymake-mode t)))
