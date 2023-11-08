;;; writerish-theme.el --- A simple theme based on the beautiful iA Writer app -*- lexical-binding: t; -*-

;; Author: Your Name <yourname@example.com>
;; Maintainer: Someone Else <someone@example.com>
;; Created: 14 Jul 2010
;; Keywords: languages
;; URL: https://example.com/foo

;; This file is not part of GNU Emacs.
;; Version: 1.1.1


;; Loosely adapted from Berrys Theme by Slava Buzin:
;; URL: https://github.com/vbuzin/berrys-theme
;; Package-Requires: ((emacs "24.1"))
;; License: MIT

;;; Commentary:

;; An attempt to emulate the look of iA Writer in GUI mode.

;;; Code:

(require 'writerish)

(deftheme writerish "A simple theme, based on the beautiful iA Writer app")

(defconst writerish-light-palette
       '(:bg-hl     "#FFFFFF" ; bg-hl
        :bg       "#FAFAFA" ; main bg
        :fg       "#1A1A1A" ; main fg
        :dim      "#C7C4C2" ; comment
        :bg-alt   "#E9EAEE" ; bg-alt
        :accent   "#1098F7" ; darker blue
        :dim-alt  "#B2EAFF" ; lighter blue
        :fg-alt   "#000000" ; fg-alt
        :green    "#52802F" ; green
        :orange   "#A66501" ; orange
        :red      "#CB4718" ; red
        ;; :magenta  "#B85CAA"
        :sym      "#1098F7" ; math
        :fg-dim   "#6D6D6D")) ; fg-dim (Alternative: #A3A19F

(writerish-themes--theme writerish-light-palette 'writerish)



;; ;;;###autoload
;; (when (and (boundp 'custom-theme-load-path) load-file-name)
;;   (add-to-list 'custom-theme-load-path
;;                (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'writerish)
(provide 'writerish-theme)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; writerish-theme.el ends here
