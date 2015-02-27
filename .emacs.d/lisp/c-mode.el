(defun my:c++-init-hook ()
  (setq c-default-style "stroustrup"
	c-basic-offset 4)
  (setq flycheck-clang-language-standard "c++11"))

(defun my:c-init-hook ()
  (setq c-default-style "k&r"
	c-basic-offset 4)
  (setq flycheck-clang-language-standard "c99"))
  
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(setq flycheck-clang-include-path (list "/usr/local/include/irrlicht"))

(add-hook 'c-mode-hook 'my:c-init-hook)
(add-hook 'c++-mode-hook 'my:c++-init-hook)

(add-hook 'c-mode-common-hook 'flycheck-mode)
