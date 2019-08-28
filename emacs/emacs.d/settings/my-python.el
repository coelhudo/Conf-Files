;;; package --- provides my python configuration

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ;;; optional

(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

(use-package flycheck
	     :ensure t
	     :init
	     (global-flycheck-mode t))

(use-package elpy
  :bind (("C-c C-o" . elpy-occur-definitions)))

(require 'pytest)


(provide 'my-python)
;;; my-python.el ends here
