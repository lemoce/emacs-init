
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(custom-set-variables
 '(haskell-stylish-on-save t))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(set-face-background 'shm-current-face "#eee8d5")
(set-face-background 'shm-quarantine-face "lemonchiffon")
