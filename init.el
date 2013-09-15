;; Adding marmalade-repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Remove splash screen
(setq inhibit-splash-screen t)

;; Hide menu and tool bars
(menu-bar-mode -1)
(tool-bar-mode -1)


;; Disable backup files (foo.bar~ files)
(setq make-backup-files nil)

;; Activate ido-mode
(require 'ido)
(ido-mode t)

;; Load monokai theme
(load-theme 'monokai t)

;; paredit
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(global-set-key [f7] 'paredit-mode)

;; rainbow delimiters
(global-rainbow-delimiters-mode)
