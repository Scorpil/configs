;; Emacs version: emacs 24

;; == Hotkeys enchantments ==
(global-set-key "\C-cg" 'goto-line)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-c f") 'nav)

;; == Little bit of visual niceness ==
(setq-default show-trailing-whitespace t)
(setq linum-format "%d ")
(global-linum-mode 1)
(add-to-list 'load-path "~/.emacs.d/elpa/linum-off-0.1")
(require 'linum-off)

;; == Backup management ==
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying-when-linked t)

;; == Add package repositories ==
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))


;; == Theming ==
(load-theme 'zenburn t)

;; == IDO ==
(require 'ido)
(ido-mode t)

;; == el-get ==
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(el-get 'sync)

;; == jedi.el: Python auto-completion package for Emacs ==
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)

;; == flycheck ==
(add-hook 'after-init-hook #'global-flycheck-mode)

;; == nav ==
(add-to-list 'load-path "/directory/containing/nav/")
(require 'nav)
(nav-disable-overeager-window-splitting)
