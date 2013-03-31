;; get rid of startup screen
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;; color-theme
(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow-eighties)

;; enable global font lock
(global-font-lock-mode t)

;; font
(when (eq system-type 'gnu/linux)
  (set-default-font "Monospace-12"))
(when (eq system-type 'windows-nt)
  (set-default-font "Courier New-12"))

;; encoding
(setq default-buffer-file-coding-system 'utf-8)
(setq default-input-method 'russian-computer)
(setq muse-html-encoding-default 'utf-8)
(setq muse-html-charset-default "utf-8")