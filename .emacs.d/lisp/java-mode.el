(require 'eclimd)

(custom-set-variables
  '(eclim-eclipse-dirs '("~/apps/eclipse-javaee-luna"))
  '(eclim-executable "~/apps/eclipse-javaee-luna/eclim")
  '(eclimd-executable "~/apps/eclipse-javaee-luna/eclimd")
  '(eclimd-default-workspace "~/eclim-workspace"))

(require 'company)
(require 'company-emacs-eclim)
  (company-emacs-eclim-setup)

(add-hook 'java-mode-hook 'eclim-mode)
(add-hook 'java-mode-hook 'company-mode)

