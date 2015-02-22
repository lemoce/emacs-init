(custom-set-variables
 '(c-default-style (quote ((java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(company-c-headers-path-system (quote ("/usr/include/" "/usr/local/include/" "/usr/include/c++/4.8.2" "/usr/include/c++/4.8.2/x86_64-redhat-linux" "/usr/include/c++/4.8.2/backward" "/usr/lib/clang/3.4.2/include")))
 '(company-idle-delay 0))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; (defun my:flymake-google-init ()
;;   (require 'flymake-google-cpplint)
;;   (custom-set-variables
;;    '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))
;;   (flymake-google-cpplint-load))
;; (add-hook 'c-mode-hook 'my:flymake-google-init)
;; (add-hook 'c++-mode-hook 'my:flymake-google-init)

(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)

;; (require 'google-c-style)
;; (add-hook 'c-mode-common-hook 'google-set-c-style)
;; (add-hook 'c-mode-common-hook 'google-make-newline-indent)

(setenv "LD_LIBRARY_PATH" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/")

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my:irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my:irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-backends 'company-irony)
(add-to-list 'company-backends 'company-clang)
(add-to-list 'company-backends 'company-cmake)
(setq company-cmake-executable "/usr/bin/cmake")
;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;; std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

(define-key company-mode-map (kbd "C-,") 'company-clang)
(define-key company-mode-map (kbd "C-<") 'company-c-headers)
(define-key company-mode-map (kbd "C-.") 'company-complete-common)
