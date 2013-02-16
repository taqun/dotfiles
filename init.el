(dolist (conf (list 
               "el-get.el"
               "flymake.el"))
  (load (concat user-emacs-directory "conf/" conf)))


(cond 
 ((equal window-system 'ns)
  (dolist (conf (list 
                 "cocoa-frame.el"
                 "cocoa-font.el"))
    (load (concat user-emacs-directory "conf/cocoa/" conf))))
 ((equal window-system nil)
  ;; do something
  ))

;;
;; Path
;;----------------------------------------------------------------------------------

(setenv "PERL5LIB" (expand-file-name "~/perl5/lib/perl5"))

;;
;; Config
;;----------------------------------------------------------------------------------

;; 文字コード設定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; 行数、列数を表示
(line-number-mode t)
(column-number-mode t)

;; スタートアップメッセージを表示しない
(setq inhibit-startup-message t)

;; バックアップファイルをつくらない
(setq make-backup-files nil)

;; 自動セープしない
(setq auto-save-default nil)
(setq delete-auto-save-files t)

;; タブをスペース4個分に
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; 対応する括弧を光らせる
(show-paren-mode t)

;; eval の出力を省略しない
(setq eval-expression-print-length nil)

;; 一行づつスクロール
(setq scroll-step 1)

;; 警告音を消す
(setq visible-bell t)
(setq ring-bell-function '(lambda()))

;; リージョンを強調表示
(transient-mark-mode t)

;; リージョンを削除可能にする
(delete-selection-mode t)

;; 行を折り返さない
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows nil)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")


;;
;; Key bind
;;----------------------------------------------------------------------------------
(define-key global-map (kbd "C-t") 'next-multiframe-window)


;;
;; Elisp
;;----------------------------------------------------------------------------------

;; eldoc
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (when (require 'eldoc nil t)
               (setq eldoc-idle-delay 0.2)
               (setq eldoc-echo-area-use-multiline-p t)
               (turn-on-eldoc-mode))))

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
