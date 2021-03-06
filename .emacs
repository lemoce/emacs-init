(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("" . "/tmp"))))
 '(column-number-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

;;(let ((default-directory "~/.emacs.d/elpa"))
;;  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path "~/.emacs.d/lisp")

(package-initialize)
(require 'yasnippet)
(yas-global-mode 1)

(global-set-key (kbd "\C-c ;") 'iedit-mode)
(defun my:indent-buffer ()
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key (kbd "s-i") 'my:indent-buffer)

(require 'git)

(load "~/.emacs.d/lisp/auto-complete-mode.el")
(load "~/.emacs.d/lisp/c-mode.el")
(load "~/.emacs.d/lisp/python-mode.el")
(load "~/.emacs.d/lisp/java-mode.el")
(load "~/.emacs.d/lisp/R-mode.el")
