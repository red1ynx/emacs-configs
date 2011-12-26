;; get rid of startup screen
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;; color-theme
(add-to-list 'load-path (concat plugins-directory "color-theme-6.6.0"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)

;; enable global font lock
(global-font-lock-mode t)

;; font
(when (eq system-type 'gnu/linux)
  (set-default-font "Monospace-12"))
(when (eq system-type 'windows-nt)
  (set-default-font "Courier New-12"))

;; title format
(setq frame-title-format '("" user-login-name "" invocation-name " - " "%b"))
