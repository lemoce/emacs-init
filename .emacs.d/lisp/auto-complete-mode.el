(add-to-list 'load-path (concat "~/.emacs.d/" "AC"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat "~/.emacs.d/" "AC/ac-dict"))

(require 'auto-complete-clang)

;; (setq ac-auto-start nil)
;; (setq ac-quick-help-delay 0.5)

(define-key ac-mode-map (kbd "C-,") 'auto-complete)

(setq-default ac-sources '(ac-source-abbrev
			   ac-source-dictionary
			   ac-source-words-in-same-mode-buffers))

(global-auto-complete-mode t)

(defun my:ac-cc-mode-config ()
  (setq ac-sources (append '(ac-source-clang
			     ac-source-yasnippet) ac-sources)
	ac-clang-flags
	(mapcar (lambda (item)(concat "-I" item))
		(split-string
		 "
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/6.0/include
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/usr/include
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/System/Library/Frameworks
/usr/local/include
"
		 ))))
(add-hook 'c-mode-common-hook 'my:ac-cc-mode-config)

(add-to-list 'ac-modes 'lisp-mode)
(add-to-list 'ac-modes 'c-mode)
(add-to-list 'ac-modes 'c++-mode)

(defun auto-complete-mode-maybe ()
  "No maybe for you. Only AC!"
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))
