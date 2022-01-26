;;; writerish-core.el --- A simple theme based on the beautiful iA Writer app -*- lexical-binding: t; -*-

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

(defgroup writerish nil
  "Writerish"
  :group 'convenience)

(defvar writerish-themes-current-style nil
  "Convenience to be able to toggle between styles.")

(defcustom writerish-themes-default-style 'light
  "Default theme for Writerish."
  :group 'writerish)

;;;###autoload
    (defun writerish-themes-disable ()
      "Disable Writerish themes"
      (interactive)
      (disable-theme 'writerish)
      (disable-theme 'writerish-dark))
    (defun writerish-themes-load-style (style)
      "Load Writerish theme variant STYLE.

Argument STYLE can be either 'light or 'dark."
      ;; (interactive)
      (cond ((equal style 'light)
             (load-theme 'writerish t))
            ((equal style 'dark)
             (load-theme 'writerish-dark t))
            (t (error (format "Unknown Writerish theme style: %S" style)))))

;;;###autoload
    (defun writerish-themes-switch-style ()
      "Toggle between the light and dark style of Writerish theme."
      (interactive)
      (cond ((or (null writerish-themes-current-style)
                 (equal writerish-themes-current-style 'dark))
             (writerish-themes-load-style 'light)
             (setq writerish-themes-current-style 'light))
            ((equal writerish-themes-current-style 'light)
             (writerish-themes-load-style 'dark)
             (setq writerish-themes-current-style 'dark))
            (t (error (format "Invalid Writerish current style: %S"
                              writerish-themes-current-style)))))
    (defun writerish-themes-load-default ()
      (interactive)
      (cond ((equal writerish-themes-default-style 'light)
             (writerish-themes-load-style 'light)
             (setq writerish-themes-current-style 'light))
            ((equal writerish-themes-default-style 'dark)
             (writerish-themes-load-style 'dark)
             (setq writerish-themes-current-style 'dark))
            (t (error (format "Invalid Writerish current style: %S"
                              writerish-themes-current-style)))))


(provide 'writerish-core)


;; writerish-core.el ends here
