
(setq haskell-stylish-on-save t)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(require 'company)
(add-to-list 'company-backends 'company-ghc)

(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)
(set-face-background 'shm-current-face "#eee8d5")
(set-face-background 'shm-quarantine-face "lemonchiffon")
