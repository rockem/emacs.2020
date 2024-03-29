;; Melpa
;; (require 'package)
;; (add-to-list 'package-archives
;; 	     ('("melpa" . "https://melpa.org/packages/") 
;; 	      '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; 	     t)

(setq package-archives
      '(("gnu-elpa"     . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("gnu-elpa"     . 5)
        ("melpa"        . 0)))


(package-initialize)
(setq package-enable-at-startup nil)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

;; Load all settings
(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(telephone-line winum flycheck-clj-kondo projectile vterm groovy-mode nord-theme highlight-numbers rainbow-mode diminish exec-path-from-shell csv-mode git-gutter magit counsel evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
