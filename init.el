(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))

(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

(defun require-or-install (package)
  (or (require package nil t)
      (progn
       (package-install-with-refresh package)
       (require package))))

(setq custom-file (locate-user-emacs-file "custom.el"))

;; Change the key of deleting to 'ctrl+h'
(global-set-key "\C-h" 'delete-backward-char)

;; Enable auto-fill mode
(turn-on-auto-fill)

;; Number of characters when turning up line
(setq fill-column 80)

;; Truncate long lines
(set-default 'truncate-lines t)

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Show key strokes in minibuffer quickly.
(setq echo-keystrokes 0.1)

;; Use UTF-8
(prefer-coding-system 'utf-8)

;; Hide menu bar
(menu-bar-mode -1)

;; Alias of 'Yes' to 'y', 'No' to 'p'
(fset 'yes-or-no-p 'y-or-n-p)

;; Do not user dialog box
(setq use-dialog-box nil)

(setq-default tab-width 2
              indent-tabs-mode nil)

;; Clipboard
(setq x-select-enable-clipboard t)

(load-theme 'tango-dark t)

(package-initialize)

(require-or-install 'auto-complete)
(global-auto-complete-mode t)

(require-or-install 'markdown-mode)

(require-or-install 'auto-save-buffers)
(run-with-idle-timer 1.0 t 'auto-save-buffers)
