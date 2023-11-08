;;; writerish-dark-theme.el -*- lexical-binding: t; -*-

;; Dark version of writerish, a theme loosely adapted from
;; URL: https://github.com/vbuzin/berrys-theme
;; Package-Requires: ((emacs "24.1"))
;; License: MIT

;;; Commentary:

;; An attempt to emulate the look of iA Writer in GUI mode.

;;; Code:

(require 'writerish-core)

(deftheme writerish-dark "A simple theme, based on the beautiful iA Writer app")

(defconst writerish-dark-palette
  '(:bg-hl "#2E2E2E" ; bg-hl
    :bg "#1A1A1A" ; main bg
    :fg "#CCCCCC" ; main fg
    :dim "#696969" ; comment
    :bg-alt "#333333" ; bg-alt
    :accent "#1098F7" ; darker blue
    :dim-alt "#324e5b" ; lighter blue
    :fg-alt "#FEFEFE" ; fg-alt
    :green "#52802F" ; green
    :orange "#d89030" ; orange
    :red "#D15F36" ; red
    ;; :magenta "#BB8DB3"
    :sym "#1098F7" ; math
    :fg-dim "#827979")) ; fg-dim (Alternative: #A3A19F)

(writerish-themes-theme writerish-dark-palette 'writerish-dark)

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'writerish-dark)
(provide 'writerish-dark-theme)


;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; writerish-dark-theme.el ends here
