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

(require 'writerish-core)

(deftheme writerish "A simple theme, based on the beautiful iA Writer app")

;;;; Colors
(let* ((class '((class color) (min-colors 89)))
       (bg-hl     "#FFFFFF") ; bg-hl

       (bg       "#FAFAFA") ; main bg
       (fg       "#1A1A1A") ; main fg
       (dim      "#C7C4C2") ; comment
       (bg-alt   "#E9EAEE") ; bg-alt

       (accent   "#1098F7") ; darker blue
       (dim-alt  "#B2EAFF") ; lighter blue

       (fg-alt   "#000000") ; fg-alt

       (green    "#52802F") ; green

       (orange   "#A66501") ; orange

       (red      "#CB4718") ; red

       (magenta  "#B85CAA")

       (sym      "#1098F7") ; math

       (fg-dim   "#6D6D6D") ; fg-dim (Alternative: #A3A19F)
       (base-weight 'light)
       (bold-weight 'demibold)
       )

  (custom-theme-set-faces
   'writerish

;;;; Core
   ;; =============================================================================
;;;;; Base
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(error ((,class (:foreground ,red))))
   `(fixed-pitch ((,class (:family unspecified))))
   `(fixed-pitch-serif ((,class (:family unspecified))))
   `(font-lock-builtin-face ((,class (:foreground ,accent :weight ,base-weight))))
   `(font-lock-comment-face ((,class (:foreground ,dim :slant normal))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,dim :slant italic))))
   `(font-lock-constant-face ((,class (:foreground ,fg-alt))))
   `(font-lock-doc-face ((,class (:inherit (font-lock-comment-face)))))
   `(font-lock-function-name-face ((,class (:foreground ,fg :inherit bold))))
   `(font-lock-keyword-face ((,class (:foreground ,fg :inherit bold))))
   `(font-lock-string-face ((,class (:foreground ,fg-dim))))
   `(font-lock-type-face ((,class (:foreground ,fg))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   `(font-lock-warning-face ((,class (:inherit warning))))
   `(fringe ((,class (:weight ,base-weight))))
   `(shadow ((,class (:foreground ,dim))))
   `(warning ((,class (:foreground ,orange))))

;;;;; Core UI
   `(cursor ((,class (:background ,accent :inverse-video t))))
   `(custom-button ((,class (:background ,accent :foreground ,bg))))
   `(custom-group-tag ((,class (:foreground ,accent :inherit bold))))
   `(custom-variable-tag ((,class (:foreground ,fg :inherit bold))))
   `(custom-visibility ((,class (:inherit link))))
   `(diff-added ((,class (:foreground ,green))))
   `(diff-context ((,class (:foreground ,dim))))
   `(diff-file-header ((,class (:inherit diff-header))))
   `(diff-header ((,class (:foreground ,dim))))
   `(diff-hunk-header ((,class (:inherit diff-header))))
   `(diff-indicator-added ((,class (:foreground ,green))))
   `(diff-refine-added ((,class (:foreground ,green))))
   `(diff-refine-changed ((,class (:foreground ,orange))))
   `(diff-refine-removed ((,class (:foreground ,red))))
   `(diff-removed ((,class (:foreground ,red))))
   `(dired-directory ((,class :foreground ,fg :inherit bold)))
   `(header-line ((,class :foreground ,fg :inherit bold)))
   `(highlight ((,class (:background ,bg-alt))))
   `(hl-line ((,class (:background ,bg-hl))))
   `(info-node ((,class (:foreground ,accent :inherit bold))))
   `(info-menu-header ((,class (:foreground ,fg :inherit bold))))
   `(info-menu-star ((,class (:foreground ,accent))))
   `(info-title-4 ((,class (:foreground ,fg :inherit bold))))
   `(isearch ((,class (:foreground ,accent :inherit bold))))
   `(isearch-fail ((,class (:foreground ,bg :background ,red))))
   `(lazy-highlight ((,class (:inherit isearch))))
   `(link ((,class (:underline t))))
   `(link-visited ((,class (:underline t))))
   `(match ((,class (:inherit isearch))))
   `(vertical-border ((,class (:background ,bg-alt :foreground ,bg-alt))))
   `(window-divider ((,class (:foreground ,bg-alt))))

   `(message-cited-text ((,class (:inherit font-lock-comment-face))))
   `(message-header-cc ((,class (:foreground ,dim))))
   `(message-header-name ((,class (:foreground ,dim))))
   `(message-header-newsgroups ((,class (:foreground ,dim :slant italic :inherit bold))))
   `(message-header-other ((,class (:foreground ,dim))))
   `(message-header-subject ((,class (:foreground ,dim))))
   `(message-header-to ((,class (:foreground ,dim))))
   `(message-header-xheader ((,class (:foreground ,dim))))
   `(message-mml ((,class (:foreground ,dim))))
   `(message-separator ((,class (:inherit font-lock-comment-face))))

   `(minibuffer-prompt ((,class (:foreground ,fg-alt :inherit bold))))
   `(mode-line ((,class (:foreground ,fg :background ,bg-alt :box ,bg-alt))))
   `(mode-line-buffer-id ((,class (:foreground ,fg-alt :distant-foreground ,bg-alt))))
   `(mode-line-highlight ((,class (:inherit highlight :background unspecified))))
   `(mode-line-emphasis ((,class (:inherit highlight :background unspecified))))
   `(mode-line-inactive ((,class (:foreground ,dim :background ,bg :box ,bg-alt ))))
   `(outline-1 ((,class (:foreground ,fg :inherit bold :background ,bg))))
   `(outline-2 ((,class (:inherit outline-1))))
   `(outline-3 ((,class (:inherit outline-1))))
   `(outline-4 ((,class (:inherit outline-1))))
   `(outline-5 ((,class (:inherit outline-1))))
   `(outline-6 ((,class (:inherit outline-1))))
   `(outline-7 ((,class (:inherit outline-1))))
   `(outline-8 ((,class (:inherit outline-1))))
   `(pulse-highlight-start-face ((,class :background ,dim-alt :extend t)))
   `(region ((,class (:background ,dim-alt))))
   `(secondary-selection ((,class (:background ,bg-alt :foreground ,fg))))
   `(show-paren-match ((,class (:inherit bold :foreground ,accent))))
   `(show-paren-mismatch ((,class (:foreground ,red :inherit bold))))
   `(success ((,class (:foreground ,green))))
   `(whitespace-big-indent ((,class (:foreground ,bg :background ,red))))
   `(whitespace-line ((,class (:background ,bg))))
   `(whitespace-trailing ((,class (:foreground ,bg :background ,red))))
   `(whitespace-space ((,class (:foreground ,bg-alt :background ,bg))))

;;;; Packages
;;;;; Ace jump
   `(ace-jump-face-foreground ((,class (:foreground ,accent :inherit bold))))

;;;;; Anzu
   `(anzu-match-1 ((,class (:foreground ,accent :inherit bold :box (:color ,accent)))))
   `(anzu-match-2 ((,class (:foreground ,bg :background ,accent :inherit bold :box (:color ,accent)))))
   `(anzu-match-3 ((,class (:foreground ,bg :background ,dim :inherit bold :box (:color ,dim)))))
   `(anzu-mode-line ((,class (:foreground ,fg :inherit bold))))
   `(anzu-mode-line-no-match ((,class (:foreground ,red :inherit bold))))
   `(anzu-replace-to ((,class (:foreground ,dim :inherit bold))))

;;;;; Company
   `(company-echo-common ((,class (:foreground ,bg :background ,red))))
   `(company-scrollbar-bg ((,class (:foreground ,bg-alt :background ,bg-alt))))
   `(company-scrollbar-fg ((,class (:foreground ,fg :background ,fg))))
   `(company-preview ((,class (:foreground ,fg-alt :background ,bg-alt))))
   `(company-preview-common ((,class (:foreground ,fg-dim :background ,bg))))
   `(company-template-field ((,class (:inherit region))))
   `(company-tooltip ((,class (:foreground ,fg :background ,bg-alt))))
   `(company-tooltip-annotation ((,class (:foreground ,dim))))
   `(company-tooltip-common ((,class (:inherit company-tooltip))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-search ((,class (:inherit isearch))))
   `(company-tooltip-search-selection ((,class (:inherit company-tooltip-search))))
   `(company-tooltip-selection ((,class (:background ,dim-alt))))

;;;;; Company-posframe
   `(company-posframe-active-backend-name ((,class :background ,bg :foreground ,accent)))
   `(company-posframe-inactive-backend-name ((,class :background ,bg :foreground ,dim)))
   `(company-posframe-metadata ((,class :background ,bg :foreground ,fg-alt)))


;;;;; bm
   `(bm-face ((,class (:foreground ,accent :background ,bg))))
   `(bm-fringe-face ((,class (:inherit bm-face))))
   `(bm-persistent-face ((,class (:foreground ,bg :background ,accent))))
   `(bm-fringe-persistent-face ((,class (:inherit bm-persistent-face))))

;;;;; Flx
   `(flx-highlight-face ((,class (:foreground ,accent :inherit bold))))

;;;;; Flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,red)))))
   `(flycheck-fringe-error ((,class (:foreground ,red :inherit bold))))
   `(flycheck-fringe-info ((,class (:foreground ,fg :inherit bold))))
   `(flycheck-fringe-warning ((,class (:foreground ,orange :inherit bold))))
   `(flycheck-info ((,class (:underline (:style wave :color ,accent)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,orange)))))

;;;;; Frog-menu
   `(frog-menu-posframe-background-face ((,class :background ,bg-hl)))
   `(frog-menu-border ((,class :background ,bg-alt)))
   `(frog-menu-action-keybinding-face ((,class :inherit minibuffer-prompt)))

;;;;; Gnus
   `(gnus-header-content ((,class (:foreground ,dim :italic t))))
   `(gnus-header-from ((,class (:foreground ,dim))))
   `(gnus-header-name ((,class (:foreground ,dim :inherit bold))))
   `(gnus-header-subject ((,class (:foreground ,dim))))

;;;;; Haskell-mode
   `(haskell-error-face ((,class (:underline (:style wave :color ,red)))))
   `(haskell-hole-face ((,class (:underline (:style wave :color ,accent)))))
   `(haskell-warning-face ((,class (:underline (:style wave :color ,orange)))))

;;;;; Helm
   `(helm-M-x-key ((,class (:foreground ,dim :underline t))))
   `(helm-buffer-directory ((,class (:inherit helm-buffer-file))))
   `(helm-buffer-not-saved ((,class (:foreground ,dim :slant italic))))
   `(helm-buffer-process ((,class (:foreground ,dim))))
   `(helm-candidate-number ((,class (:inherit bold))))
   `(helm-candidate-number-suspended ((,class (:foreground ,dim :inherit bold))))
   `(helm-ff-directory ((,class (:foreground ,fg :inherit bold))))
   `(helm-ff-dirs ((,class (:inherit helm-ff-file))))
   `(helm-ff-dotted-directory ((,class (:inherit helm-ff-directory))))
   `(helm-ff-dotted-symlink-directory ((,class (:inherit helm-ff-dotted-directory))))
   `(helm-ff-file ((,class (:foreground ,fg))))
   `(helm-ff-executable ((,class (:foreground ,green))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,bg :background ,red))))
   `(helm-ff-pipe ((,class (:foreground ,orange :background ,fg))))
   `(helm-ff-prefix ((,class (:foreground ,fg :background ,dim-alt))))
   `(helm-ff-socket ((,class (:foreground ,red :box (:color ,red)))))
   `(helm-grep-file ((,class (:foreground ,fg :inherit bold))))
   `(helm-grep-finish ((,class (:foreground ,green :inherit bold))))
   `(helm-grep-lineno ((,class (:foreground ,dim))))
   `(helm-grep-match ((,class (:inherit isearch))))
   `(helm-header ((,class (:inherit helm-source-header :background ,bg))))
   `(helm-header-line-left-margin ((,class (:foreground ,bg :background ,orange))))
   `(helm-helper ((,class (:foreground ,fg))))
   `(helm-history-deleted ((,class (:foreground ,bg :background ,red))))
   `(helm-history-remote ((,class (:foreground ,red))))
   `(helm-lisp-completion-info ((,class (:foreground ,bg-alt :inherit bold))))
   `(helm-lisp-show-completion ((,class (:inherit isearch))))
   `(helm-locate-finish ((,class (:foreground ,green))))
   `(helm-match ((,class (:foreground ,accent :inherit bold))))
   `(helm-match-item ((,class (:inherit isearch))))
   `(helm-moccur-buffer ((,class (:foreground ,fg))))
   `(helm-mode-prefix ((,class (:foreground ,bg :background ,dim-alt))))
   `(helm-resume-need-update ((,class (:foreground ,bg :background ,red))))
   `(helm-selection ((,class (:inherit highlight))))
   `(helm-selection-line ((,class (:inherit highlight))))
   `(helm-source-header ((,class (:foreground ,fg :inherit bold :height 1.0))))
   `(helm-separator ((,class (:foreground ,fg))))
   `(helm-visible-mark ((,class (:background ,dim-alt))))
   `(helm-yas-key ((,class (:inherit helm-M-x-key))))

;;;;; Ido
   `(ido-indicator ((,class (:foreground ,bg :background ,red))))
   `(ido-only-match ((,class (:foreground ,accent :inherit bold))))
   `(ido-subdir ((,class (:foreground ,fg :inherit bold))))
   `(ido-virtual ((,class (:foreground ,dim :inherit bold))))

;;;;; Indent guide
   `(indent-guide-face ((,class (:foreground ,dim))))

;;;;; Ivy
   `(ivy-confirm-face ((,class (:foreground ,green :inherit bold))))
   `(ivy-current-match ((,class (:inherit highlight))))
   `(ivy-cursor ((,class (:foreground ,bg :background ,fg))))
   `(ivy-match-required-face ((,class (:foreground ,red :inherit bold))))
   `(ivy-remote ((,class (:foreground ,fg :underline t))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,accent :inherit bold))))
   `(ivy-minibuffer-match-face-3 ((,class (:inherit ivy-minibuffer-match-face-2 :underline t))))
   `(ivy-minibuffer-match-face-4 ((,class (:inherit ivy-minibuffer-match-face-2 :box nil))))


;;;;; Ivy-posframe
   `(ivy-posframe ((,class (:background ,bg-hl))))
   `(ivy-posframe-border ((,class (:inherit ivy-posframe))))

;;;;; LaTeX
   `(font-latex-sectioning-0-face ((,class (:weight ,base-weight))))
   `(font-latex-sectioning-1-face ((,class (:inherit font-latex-sectioning-0-face))))
   `(font-latex-sectioning-2-face ((,class (:inherit font-latex-sectioning-0-face))))
   `(font-latex-sectioning-3-face ((,class (:inherit font-latex-sectioning-0-face))))
   `(font-latex-sectioning-4-face ((,class (:inherit font-latex-sectioning-0-face))))
   `(font-latex-sectioning-5-face ((,class (:inherit font-latex-sectioning-0-face))))
   `(font-latex-sedate-face ((,class (:foreground ,fg-dim :inherit bold))))
   `(font-latex-italic-face ((,class (:weight ,base-weight :slant italic))))
   `(font-latex-math-face ((,class (:foreground ,sym))))
   `(font-latex-script-char-face ((,class (:foreground ,sym))))
   `(font-latex-slide-title-face ((,class (:inherit font-latex-sectioning-0-face))))
   `(font-latex-string-face ((,class (:inherit font-lock-string-face))))
   `(font-latex-warning-face ((,class (:inherit font-lock-warning-face))))
   `(font-latex-verbatim-face ((,class (:inherit bold))))
   `(TeX-error-description-error ((,class :inherit (error bold))))
   `(TeX-error-description-warning ((,class :inherit (warning bold))))
   `(TeX-error-description-said ((,class :inherit (success bold))))

;;;;; Marginalia
   ;; `(marginalia-archive ((,class :foreground ,green-nuanced-fg)))
   ;; `(marginalia-date ((,class :foreground ,blue-nuanced-fg)))
   ;; `(marginalia-char ((,class :foreground ,red-active)))
   ;; `(marginalia-documentation ((,class :foreground ,fg-special-cold :inherit modus-themes-slant)))
   ;; `(marginalia-file-modes ((,class :inherit shadow)))
   ;; `(marginalia-file-name ((,class :foreground ,fg-special-mild)))
   ;; `(marginalia-file-owner ((,class :foreground ,red-nuanced-fg)))
   ;; `(marginalia-key ((,class :foreground ,magenta-active)))
   ;; `(marginalia-mode ((,class :foreground ,cyan-active)))
   ;; `(marginalia-modified ((,class :foreground ,yellow-active)))
   ;; `(marginalia-number ((,class :foreground ,blue-active)))
   ;; `(marginalia-size ((,class :foreground ,green-active)))
   ;; `(marginalia-type ((,class :foreground ,fg-special-warm)))
   ;; `(marginalia-variable ((,class :foreground ,yellow-nuanced-fg)))
   ;; `(marginalia-version ((,class :foreground ,cyan-active)))

;;;;; Markdown
   `(markdown-code-face ((,class (:family unspecified))))
   `(markdown-header-face ((,class (:foreground ,fg :inherit bold))))
   `(markdown-header-face-1 ((,class (:inherit markdown-header-face :height 1.0))))
   `(markdown-header-face-2 ((,class (:inherit markdown-header-face :height 1.0))))
   `(markdown-header-face-3 ((,class (:inherit markdown-header-face :height 1.0))))
   `(markdown-header-face-4 ((,class (:inherit markdown-header-face :height 1.0))))
   `(markdown-inline-code-face ((,class (:inherit markdown-code-face))))
   `(markdown-italic-face ((,class (:inherit italic))))

;;;;; Magit
   `(magit-bisect-bad ((,class (:foreground ,red))))
   `(magit-bisect-good ((,class (:foreground ,green))))
   `(magit-bisect-skip ((,class (:foreground ,orange))))
   `(magit-blame-highlight ((,class (:foreground ,dim :background ,bg-alt))))
   `(magit-branch-local ((,class (:foreground ,accent))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-reflog-checkout ((,class (:foreground ,accent))))
   `(magit-diff-base ((,class (:foreground ,orange))))
   `(magit-diff-base-highlight ((,class (:inherit magit-diff-base))))
   `(magit-diff-context ((,class (:foreground ,dim))))
   `(magit-diff-context-highlight ((,class (:inherit magit-diff-context))))
   `(magit-diff-added ((,class (:foreground ,green))))
   `(magit-diff-added-highlight ((,class (:inherit magit-diff-added))))
   `(magit-diff-file-heading ((,class (:foreground ,dim))))
   `(magit-diff-file-heading-selection ((,class (:inherit magit-diff-file-heading))))
   `(magit-diff-hunk-heading ((,class (:foreground ,dim))))
   `(magit-diff-hunk-heading-highlight ((,class (:inherit magit-diff-hunk-heading))))
   `(magit-diff-hunk-heading-selection ((,class (:inherit magit-diff-hunk-heading))))
   `(magit-diff-lines-boundary((,class (:inherit unspecified))))
   `(magit-diff-lines-heading ((,class (:inherit unspecified))))
   `(magit-diff-our-highlight ((,class (:inherit magit-diff-removed))))
   `(magit-diff-removed ((,class (:foreground ,red))))
   `(magit-diff-removed-highlight ((,class (:inherit magit-diff-removed))))
   `(magit-diffstat-added ((,class (:foreground ,green))))
   `(magit-diffstat-removed ((,class (:foreground ,red))))
   `(magit-diff-their-highlight ((,class (:inherit magit-diff-added))))
   `(magit-diff-whitespace-warning ((,class (:foreground ,bg :background ,red))))
   `(magit-log-author ((,class (:foreground ,fg))))
   `(magit-log-date ((,class (:foreground ,dim))))
   `(magit-log-graph ((,class (:foreground ,dim))))
   `(magit-mode-line-process ((,class (:background unspecified))))
   `(magit-hash ((,class (:foreground ,dim))))
   `(magit-header-line ((,class (:foreground ,dim))))
   `(magit-header-line-log-select ((,class (:foreground ,fg))))
   `(magit-process-ok ((,class (:foreground ,green))))
   `(magit-reflog-cherry-pick ((,class (:foreground ,green))))
   `(magit-reflog-commit ((,class (:foreground ,green))))
   `(magit-reflog-merge ((,class (:foreground ,green))))
   `(magit-reflog-reset ((,class (:foreground ,red))))
   `(magit-refname ((,class (:foreground ,dim))))
   `(magit-section-heading ((,class (:foreground ,fg))))
   `(magit-section-heading-selection ((,class (:inherit magit-section-heading))))
   `(magit-section-highlight ((,class (:inherit unspecified))))
   `(magit-section-secondary-heading ((,class (:foreground ,fg))))
   `(magit-signature-bad ((,class (:foreground ,red))))
   `(magit-signature-error ((,class (:foreground ,red))))
   `(magit-signature-expired ((,class (:foreground ,orange))))
   `(magit-signature-expired-key ((,class (:inherit magit-signature-expired))))
   `(magit-signature-good ((,class (:foreground ,green))))
   `(magit-signature-revoked ((,class (:foreground ,red))))
   `(magit-signature-untrusted ((,class (:foreground ,red))))
   `(magit-tag ((,class (:foreground ,accent))))

;;;;; Mu4e
   `(mu4e-attach-number-face ((,class (:foreground ,accent))))
   `(mu4e-contact-face ((,class (:foreground ,dim :slant italic))))
   `(mu4e-context-face ((,class (:foreground ,dim))))
   `(mu4e-flagged-face ((,class (:foreground ,orange))))
   `(mu4e-header-face ((,class (:foreground ,fg))))
   `(mu4e-header-highlight-face ((,class (:inherit highlight))))
   `(mu4e-header-key-face ((,class (:foreground ,dim :inherit bold))))
   `(mu4e-header-marks-face ((,class (:foreground ,accent :inherit bold))))
   `(mu4e-header-value-face ((,class (:foreground ,dim :slant italic))))
   `(mu4e-highlight-face ((,class (:foreground ,accent))))
   `(mu4e-special-header-value-face ((,class (:foreground ,dim :slant italic))))
   `(mu4e-region-code ((,class (:box (:color ,accent)))))
   `(mu4e-replied-face ((,class :slant italic)))
   `(mu4e-url-number-face ((,class (:foreground ,accent))))

;;;;; Org mode
   `(org-agenda-date ((,class (:foreground ,fg :inherit bold))))
   `(org-agenda-date-today ((,class (:foreground ,fg-alt :slant normal :inherit bold))))
   `(org-agenda-date-weekend ((,class (:foreground ,fg-dim :inherit bold))))
   `(org-agenda-diary ((,class (:foreground ,dim))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,dim))))
   `(org-agenda-done ((,class (:foreground ,dim :strike-through nil))))
   `(org-agenda-restriction-lock ((,class (:background ,bg-alt))))
   `(org-agenda-structure ((,class (:foreground ,fg :inherit bold :height 1.0))))
   `(org-block ((,class (:inherit fg))))
   `(org-clock-overlay ((,class (:inherit secondary-selection))))
   ;; `(org-code ((, class (:inherit normal))))
   `(org-column ((,class (:foreground ,dim :slant normal))))
   `(org-column-title ((,class (:foreground ,fg :inherit bold))))
   `(org-date ((,class (:foreground ,fg))))
   `(org-date-selected ((,class (:foreground ,accent :inherit bold))))
   `(org-document-info ((,class (:foreground ,dim))))
   `(org-document-title ((,class (:foreground ,dim :inherit bold))))
   `(org-done ((,class (:inherit org-level-1 :foreground ,dim))))
   `(org-drawer ((,class (:inherist unspecified :foreground ,dim))))
   `(org-ellipsis ((,class (:inherit unspecified :foreground ,fg-dim))))
   `(org-footnote ((,class (:foreground ,fg :underline t))))
   `(org-formula ((,class (:foreground ,dim))))
   `(org-headline-done ((,class (:foreground ,dim :strike-through nil))))
   `(org-hide ((,class (:foreground ,bg))))
   `(org-latex-and-related ((,class (:foreground ,dim))))
   `(org-level-1 ((,class (:foreground ,fg :inherit bold))))
   `(org-level-2 ((,class (:inherit org-level-1 :weight normal))))
   `(org-level-3 ((,class (:inherit org-level-2))))
   `(org-level-4 ((,class (:inherit org-level-2))))
   `(org-level-5 ((,class (:inherit org-level-2))))
   `(org-level-6 ((,class (:inherit org-level-2))))
   `(org-level-7 ((,class (:inherit org-level-2))))
   `(org-level-8 ((,class (:inherit org-level-2))))
   `(org-link ((,class ( :foreground unspecified :inherit unspecified :underline t))))
   `(org-mode-line-clock ((,class (:foreground unspecified :background unspecified))))
   `(org-mode-line-clock-overrun ((,class (:foreground ,red))))
   `(org-priority ((,class(:inherit org-level-1 :foreground ,accent))))
   `(org-scheduled ((,class (:foreground ,fg))))
   `(org-scheduled-previously ((,class (:foreground ,fg))))
   `(org-scheduled-today ((,class (:foreground ,fg-alt))))
   `(org-sexp-date ((,class (:foreground ,dim))))
   `(org-special-keyword ((,class (:foreground ,accent))))
   `(org-table ((,class (:foreground ,fg))))
   `(org-tag ((,class (:foreground ,dim))))
   `(org-time-grid ((,class (:foreground ,dim))))
   `(org-todo ((,class (:inherit org-level-1 :foreground ,fg))))
   `(org-upcoming-deadline ((,class (:foreground ,red))))
   `(org-warning ((,class (:foreground ,red))))
   `(org-verbatim ((,class (:weight ,base-weight))))

;;;;;; Org Pomodoro
   `(org-pomodoro-mode-line ((,class (:foreground ,accent :inherit bold))))
   `(org-pomodoro-mode-line-break ((,class (:foreground ,green :inherit bold))))
   `(org-pomodoro-mode-line-overtime ((,class (:foreground ,red :inherit bold))))

;;;;; Outline-minor-mode
   `(outline-minor-0 ((,class (:foreground ,fg :inherit bold :background ,bg))))


;;;;; Perspective
   `(persp-selected-face ((,class (:foreground ,fg :weight ,base-weight))))

;;;;; Selectrum-Prescient
   `(selectrum-primary-highlight ((,class (:foreground ,accent :inherit bold)))) ;; TODO  is this what I want?
   `(selectrum-secondary-highlight ((,class (:foreground ,accent :inherit bold))))

;;;;; Which key
   `(which-key-key-face ((,class (:foreground ,accent :inherit bold))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'writerish)
(provide 'writerish-theme)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; writerish-theme.el ends here
