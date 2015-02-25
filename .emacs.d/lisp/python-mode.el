;;---------------------------
;; python emacs
;;---------------------------
(add-to-list 'load-path "~/.emacs.d/pinard-Pymacs-5989046")
(require 'pymacs)
(setq pymacs-load-path 
      '("/home/27190057897/.local/lib/python2.7/site-packages/rope"
        "/home/27190057897/.local/lib/python2.7/site-packages/ropemacs"))
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

;;---------------------------
;; python emacs company
;;---------------------------
(require 'company)
(add-hook 'python-mode-hook 'company-mode)

 
(defun my:flycheck-python-config ()
  (flycheck-mode))

(add-hook 'python-mode-hook 'my:flycheck-python-config)
