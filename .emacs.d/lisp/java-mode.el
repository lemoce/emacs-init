(require 'eclim)
(require 'eclimd)
(require 'eclim-maven)

(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(add-hook 'java-mode-hook 'eclim-mode)
(add-hook 'java-mode-hook 'company-mode)

(defun my:custom-varibles-java-mode ()
  (setq eclim-eclipse-dirs '("~/apps/eclipse-javaee-luna")
	eclim-executable "~/apps/eclipse-javaee-luna/eclim"
	eclimd-executable "~/apps/eclipse-javaee-luna/eclimd"
	eclimd-default-workspace "~/eclim-workspace")
  (local-set-key (kbd "s-i") 'my:indent-buffer))
  
(add-hook 'java-mode-hook 'my:custom-varibles-java-mode)
