(defun my:c++-init-hook ()
  (setq c-default-style "stroustrup"
	c-basic-offset 4)
  (setq flycheck-clang-language-standard "c++11")
  ('flycheck-mode))

(defun my:c-init-hook ()
  (setq c-default-style "k&r"
	c-basic-offset 4)
  (setq flycheck-clang-language-standard "c99")
  ('flycheck-mode))
  
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(setq flycheck-clang-include-path (list "/usr/local/include/irrlicht"))

(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'my:c++-init-hook)

