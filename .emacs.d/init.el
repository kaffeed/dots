(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; hide scrollbar
(scroll-bar-mode -1)

;; always refresh buffers
(global-auto-revert-mode t)

;; undo tree
(global-undo-tree-mode)

;; Hide line numbers
(global-linum-mode 1)

;; IDO Mode
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; autocomplete
(ac-config-default)

;; Windmove stuff
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; elpy
(elpy-enable)

;; whichkey
(which-key-mode)
(which-key-setup-side-window-bottom)

;; smex
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Instantly get to scratch
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; can change the path here
(add-to-list 'load-path "~/.emacs.d/lisp")

;; Auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Stack exchange
(define-prefix-command 'launcher-map)
(global-set-key (kbd "s-l") 'launcher-map)
(define-key launcher-map "qq" #'sx-tab-all-questions)
(define-key launcher-map "qi" #'sx-inbox)
(define-key launcher-map "qo" #'sx-open-link)
(define-key launcher-map "qu" #'sx-tab-unanswered-my-tags)
(define-key launcher-map "qa" #'sx-ask)
(define-key launcher-map "qs" #'sx-search)

;; Powerline
(require 'spaceline-config)
(spaceline-emacs-theme)

;; Google-this
(google-this-mode 1)

;; pdf rendering
(pdf-tools-install)

;; gruvbox theme
(load-theme 'gruvbox t)

;; rainbow delimitiers
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; SLIME
;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; org
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; webmode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; skewer live preview
(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
