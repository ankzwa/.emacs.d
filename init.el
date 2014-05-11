(cua-mode t)
(column-number-mode t)
(which-function-mode t)
(show-paren-mode t)

(global-hl-line-mode t)
(global-linum-mode t)

(recentf-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq scroll-step 1)
(setq linum-format "%4d ")
(setq hl-line-face 'underline)
(setq cua-enable-cua-keys nil)
(setq history-delete-duplicates t)
(setq ruby-insert-encoding-magic-comment nil)
(setq org-capture-templates
 '(("t" "Todo" entry (file+headline "~/Dropbox/org/gtd.org" "Tasks")
        "* TODO %?\n  %i\n  %a")
   ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
        "* %?\nEntered on %U\n  %i\n  %a")))

(setq-default tab-width 4 indent-tabs-mode nil)
(set-face-attribute 'linum nil :foreground "green")

(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-^") 'cua-set-rectangle-mark)
(define-key global-map (kbd "C-c r") 'replace-regexp)
(define-key global-map (kbd "C-c h") 'recentf-open-files)
(define-key global-map (kbd "C-c c") 'org-capture)

(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-m") 'newline-and-indent)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
