;; Emacs version: emacs 24

;; == Hotkeys enchantments ==

;; copy region to clipboard
(global-set-key "\C-cw" (lambda () (interactive) (shell-command-on-region (region-beginning) (region-end) "pbcopy")))

;; fast point move
(defvar step 10 "Number of lines to move point up and down with fast move commands")
(global-set-key "\M-n" (lambda () (interactive) (next-line step)))
(global-set-key "\M-p" (lambda () (interactive) (previous-line step)))

(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cf" 'ag)

(global-set-key "\C-cc" 'comment-region)
(global-set-key "\C-cu" 'uncomment-region)

(global-set-key "\C-c\C-rs" 'replace-string)
(global-set-key "\C-c\C-rq" 'query-replace)
(global-set-key "\C-c\C-rr" 'replace-regexp)
(global-set-key "\C-c\C-ri" 'query-replace-regexp)

(defalias 'yes-or-no-p 'y-or-n-p)

;; == Little bit of visual niceness ==
(setq-default show-trailing-whitespace t)
(setq linum-format "%d ")
(global-linum-mode 1)
(menu-bar-mode -1)

;; == Backup management ==
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying-when-linked t)

;; == Add package repositories ==
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmlade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; == Theming ==
(load-theme 'zenburn t)

;; == CoffeeScript ==
(setq coffee-tab-width 2)

;; == FlyCheck ==
(global-set-key (kbd "C-c @") 'flycheck-mode)

;; == Javascript ==
;; - js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; == Other ==
(require 'ido)
(ido-mode t)
(put 'set-goal-column 'disabled nil)
