;; color-theme
(add-to-list 'load-path (concat plugins-directory "color-theme-6.6.0"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)

;; enable global font lock
(global-font-lock-mode t)

;; font
(when im-at-home
  (set-default-font "Monospace-12"))

;; title format
(setq frame-title-format '("" invocation-name " - " "%b"))
