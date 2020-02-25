;; Change the key of deleting to 'ctrl+h'
(global-set-key "\C-h" 'delete-backward-char)

;; Enable auto-fill mode
(turn-on-auto-fill)

;; Number of characters when turning up line
(setq fill-column 80)

;; Require auto-save-buffers package
(require 'auto-save-buffers)
(run-with-idle-timer 1.0 t 'auto-save-buffers)

;; Truncate long lines
(set-default 'truncate-lines t)

;;; Load path and load theme 'cyberpunk'
(load-theme 'tango-dark t)

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Show key strokes in minibuffer quickly.
(setq echo-keystrokes 0.1)

;; Use UTF-8
(prefer-coding-system 'utf-8)

;; Hide menu bar
(menu-bar-mode -1)
