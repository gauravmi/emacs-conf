
;; Axheldded by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq mac-command-modifier 'control)
;; ======== CUSTOMIZE ===========
;; Navigation
;;(back-button-mode 1)
(ido-mode)
;;(dired-mode)

;; start - dislpay buffer at the bottom of the window. ---------------
(defun my-list-buffers-vertical-split ()
  "`list-buffers', but forcing a vertical split.
    See `split-window-sensibly'."
  (interactive)
  (let ((split-width-threshold nil)
        (split-height-threshold 0))
    (call-interactively 'list-buffers)))

(global-set-key [remap list-buffers] 'my-list-buffers-vertical-split)
;; end  - -------------------------------------------------------------



(add-to-list 'load-path (expand-file-name "~/git/org-mode/lisp"))
(add-to-list 'auto-mode-alist '("\\.\\(org\\  |org_archive\\|txt\\|README\\)$" . org-mode))
(setq org-agenda-files '("/tmp/test.org"))
(require 'org-install)
(require 'org-habit)
(global-set-key "\C-ca" 'org-agenda)
(org-mode)

(require 'linum)
(global-linum-mode 1)
(setq linum-format "%4d    ")

(require 'projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(require 'doom-themes)
(load-theme 'doom-molokai t)
(setq doom-neotree-enable-file-icons t)

;;neotree kbd
(global-set-key (kbd "C-c n t") 'neotree-toggle) ; Ctrl+a

(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
;;(require 'doom-neotree)
;;set neotree to current projectile project
(setq projectile-switch-project-action 'neotree-projectile-action)


;; Web
;;(sass-mode 1)
;;(less-css-mode 1)
;;(scss-mode 1)
;;(html-mode 1)
;;(javascript-mode 1)

;; ==============================


;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(package-selected-packages (quote (less-css-mode sass-mode scss-mode))))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(org-agenda-files (quote ("~/workspace/notes/cheatsheet.org")))
 '(package-selected-packages
   (quote
    (emmet-mode skewer-mode smart-mode-line-powerline-theme powerline org nlinum doom-themes neotree sr-speedbar web-mode scss-mode sass-mode less-css-mode helm-projectile)))
 '(sr-speedbar-right-side t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "brightwhite" :foreground "brightwhite"))))
 '(doom-default ((t (:inherit default))))
 '(fringe ((t (:background "grey95" :box (:line-width 2 :color "brightwhite" :style released-button)))))
 '(helm-header ((t (:background "color-54" :foreground "brightwhite" :underline nil))))
 '(helm-match ((t (:foreground "brightwhite"))))
 '(helm-prefarg ((t (:foreground "brightwhite"))))
 '(helm-selection ((t (:background "color-235" :distant-foreground "green" :foreground "brightwhite"))))
 '(helm-selection-line ((t (:background "brightblack" :distant-foreground "black" :foreground "brightwhite"))))
 '(helm-source-header ((t (:background "color-234" :foreground "brightwhite" :weight bold :height 1.3 :family "Sans Serif"))))
 '(highlight ((t (:background "brightblack" :foreground "brightwhite"))))
 '(isearch ((t (:background "brightyellow" :foreground "black"))))
 '(lazy-highlight ((t (:background "black" :distant-foreground "black" :foreground "brightyellow" :box (:line-width 4 :color "brightwhite" :style released-button) :underline (:color foreground-color :style wave)))))
 '(linum ((t (:background "#1D1F20" :foreground "color-21" :weight normal))))
 '(powerline-active1 ((t (:background "#39393D" :foreground "#FD971F" :family "Menlo"))))
 '(region ((t (:background "brightblack" :foreground "brightwhite" :box (:line-width 2 :color "red" :style released-button)))))
 '(vertical-border ((t (:foreground "black" :width condensed)))))
