
;; ██╗░░░██╗██╗░░░░░░██╗░░░██╗████████╗██╗██╗░░░░░░██████╗
;; ██║░░░██║██║░░░░░░██║░░░██║╚══██╔══╝██║██║░░░░░██╔════╝
;; ██║░░░██║██║█████╗██║░░░██║░░░██║░░░██║██║░░░░░╚█████╗░
;; ██║░░░██║██║╚════╝██║░░░██║░░░██║░░░██║██║░░░░░░╚═══██╗
;; ╚██████╔╝██║░░░░░░╚██████╔╝░░░██║░░░██║███████╗██████╔╝
;; ░╚═════╝░╚═╝░░░░░░░╚═════╝░░░░╚═╝░░░╚═╝╚══════╝╚═════╝░

;; Custom Variables

(defvar bgcolor "#11111b"
  "The normal background of emacs.")
(defvar darker-bgcolor "#0D0D15"
  "The darker background of emacs.")
(defvar darkest-bgcolor "#0B0B11"
  "The darker background of emacs.")
(defvar dim-fgcolor "#6C7096"
  "The calm foreground of emacs.")
(defvar calm-fgcolor "#BAC2DE"
  "The calm foreground of emacs.")
(defvar lavender-color "#b4befe"
  "The blue color for emacs.")
(defvar blue-color "#90b6f3"
  "The blue color for emacs.")
(defvar pink-color "#cba6f7"
  "The pink color for emacs.")
(defvar red-color "#f38ba8"
  "The red color for emacs.")
(defvar teal-color "#a6e3a1"
  "The pink color for emacs.")
(defvar grim-fgcolor "#232338"
  "The calm foreground of emacs.")


;; Bars/ Lines blend
(set-face-attribute 'header-line nil :background bgcolor)
(set-face-attribute 'mode-line nil :background bgcolor)

;; Error Diagnostics
(setq flycheck-border-width 20)

;; modeline replacement
(require 'echo-bar)
(setq echo-bar-minibuffer nil)
(setq message-log-max nil)
(echo-bar-mode)
(require 'echo-bar-custom)

;; Margins

(setq-default perfect-margin-ignore-modes (prog-mode))

;; For the nice lsp information
(require 'eldoc-box)

;; Custom Windows with custom vehaviours
(add-to-list 'display-buffer-alist '("\\*helpful.*"
                                     (display-buffer-in-side-window)
                                     (side . right)
                                     (window-width . 50)
                                     ))
(add-to-list 'display-buffer-alist '("\\*Org Agenda.*"
                                     (display-buffer-in-side-window)
                                     (side . right)
                                     (window-width . 50)
                                     ))
(add-to-list 'display-buffer-alist '("\\.*embark.*"
                                     (display-buffer-in-side-window)
                                     (side . right)
                                     (window-width . 30)
                                     ))
(add-to-list 'display-buffer-alist '("\\.*shell.*"
                                     (display-buffer-in-side-window)
                                     (side . bottom)
                                     (window-width . 30)
                                     ))



(setq-default inhibit-message t)

(require 'startup)


;; ███████╗░█████╗░███╗░░██╗████████╗░██████╗
;; ██╔════╝██╔══██╗████╗░██║╚══██╔══╝██╔════╝
;; █████╗░░██║░░██║██╔██╗██║░░░██║░░░╚█████╗░
;; ██╔══╝░░██║░░██║██║╚████║░░░██║░░░░╚═══██╗
;; ██║░░░░░╚█████╔╝██║░╚███║░░░██║░░░██████╔╝
;; ╚═╝░░░░░░╚════╝░╚═╝░░╚══╝░░░╚═╝░░░╚═════╝░

(set-face-attribute 'default nil :font "Iosevka Nerd Font Medium" :height 150)
(set-face-attribute 'fixed-pitch nil :font "Iosevka Nerd Font Medium" :height 150)
(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
(set-face-attribute 'line-number nil :font "Iosevka Nerd Font Bold" :height 120)
(add-to-list 'default-frame-alist '(font . "Iosevka Nerd Font Medium"))

;; For Emacs client:
(defun configure-icons (frame)
  "Configure font given initial non-daemon FRAME.
Intended for `after-make-frame-functions'."
  ;; ICONS

  ;; Treemacs png's are defined in dataManagers.el
  ;; (setq flycheck-posframe-warning-prefix "  ")
  ;; (setq flycheck-posframe-error-prefix "󰚌  ")
  ;; (setq flycheck-posframe-info-prefix "  ")
  ;; (setq flycheck-posframe-border-width 20)

  (setq kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
  (setq kind-icon-use-icons 'nil)
  (setq kind-icon-blend-frac 0.08)
  (setq kind-icon-blend-background nil)
  (setq kind-icon-extra-space 'nil)
  (setq kind-icon-default-style '(:padding 1 :stroke 0 :margin 0 :radius 0 :height 1.0 :scale 1.0))
  (setq corfu--frame-parameters '((no-accept-focus . t)
                                  (no-focus-on-map . t)
                                  (min-width . t)
                                  (min-height . t)
                                  (border-width . 0)
                                  (child-frame-border-width . 10)
                                  (left-fringe . 0)
                                  (right-fringe . 0)
                                  (vertical-scroll-bars)
                                  (horizontal-scroll-bars)
                                  (menu-bar-lines . 0)
                                  (tool-bar-lines . 0)
                                  (tab-bar-lines . 0)
                                  (no-other-frame . t)
                                  (unsplittable . t)
                                  (undecorated . t)
                                  (cursor-type)
                                  (no-special-glyphs . t)
                                  (desktop-dont-save . t)))

  (setq breadcrumb-imenu-crumb-separator "  ")
  (setq breadcrumb-project-max-length 0.9)
  (setq path-separator "󰇙")

  (remove-hook 'after-make-frame-functions #'configure-icons))
(add-hook 'after-make-frame-functions #'configure-icons)


(defun configure-face (frame)
  "Configure face given initial non-daemon FRAME.
Intended for `after-make-frame-functions'."

  (require 'prompt-text)
  (prompt-text-mode)

  ;; kind icons
  (set-face-attribute 'font-lock-variable-name-face nil :foreground lavender-color)
  (set-face-attribute 'variable-pitch nil :font "Abel" :weight 'regular)


  ;; vertico
  ;; (set-face-attribute 'vertico-multiline nil :weight 'bold :family "Barlow SemiCondensed")
  (set-face-attribute 'vertico-posframe nil :weight 'bold :inherit 'vertico-multiline)
  (set-face-attribute 'vertico-posframe-border nil :inherit 'ansi-color-white)
  (set-face-attribute 'vertico-posframe-border-2 nil :inherit 'ansi-color-white)
  (set-face-attribute 'vertico-posframe-border-3 nil :inherit 'ansi-color-white)
  (set-face-attribute 'vertico-posframe-border-4 nil :inherit 'ansi-color-white)
  (set-face-attribute 'vertico-posframe-border-fallback nil :background darker-bgcolor :inherit 'ansi-color-white)
  (set-face-attribute 'vertico-current nil :foreground 'unspecified :inherit 'org-footnote :background bgcolor)
  ;; (set-face-attribute 'vertico-posframe-border-fallback nil :background darker-bgcolor :inherit 'ansi-color-white :family "Barlow SemiCondensed")
  ;; (set-face-attribute 'vertico-current nil :foreground 'unspecified :inherit 'org-footnote :background bgcolor :family "Barlow SemiCondensed")
  ;; (set-face-attribute 'vertico-group-title nil :foreground 'unspecified :family "Barlow SemiCondensed")
  ;; (set-face-attribute 'consult-help nil :foreground 'unspecified :family "Barlow SemiCondensed")
  ;; (set-face-attribute 'consult-buffer nil :foreground 'unspecified :family "Barlow SemiCondensed")
  (set-face-attribute 'marginalia-documentation nil :family "Abel")

  (set-face-attribute 'flycheck-error nil :background "#42232c" :foreground "#F38BA8" :underline 'nil :weight 'bold)
  (set-face-attribute 'flycheck-info nil :background "#262d25" :foreground "#A6E3A1" :underline 'nil :weight 'bold)
  (set-face-attribute 'flycheck-warning nil :background "#453e29" :foreground "#F8D782" :underline 'nil :weight 'bold)

  (set-face-attribute 'flycheck-fringe-error nil :background 'unspecified :foreground bgcolor :underline 'nil)
  (set-face-attribute 'flycheck-fringe-info nil :background 'unspecified :foreground bgcolor :underline 'nil)
  (set-face-attribute 'flycheck-fringe-warning nil :background 'unspecified :foreground bgcolor :underline 'nil)
  (set-face-attribute 'flycheck-posframe-error-face nil :inherit 'flycheck-error :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'flycheck-posframe-warning-face nil :inherit 'flycheck-warning :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'flycheck-posframe-info-face nil :inherit 'flycheck-info :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'flycheck-posframe-border-face nil :foreground darker-bgcolor :background darker-bgcolor)
  (set-face-attribute 'flycheck-posframe-face nil :background darker-bgcolor)
  (set-face-attribute 'eldoc-box-body nil :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'eldoc-box-border nil :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'corfu-default nil :background darker-bgcolor :foreground dim-fgcolor :weight 'semibold :family "Iosevka Nerd Font")
  (set-face-attribute 'corfu-current nil :foreground calm-fgcolor :background bgcolor :weight 'semibold :family "Iosevka Nerd Font")

  (set-face-attribute 'show-paren-match nil :background grim-fgcolor :foreground calm-fgcolor)

  (set-face-attribute 'pulsar-generic nil :background grim-fgcolor :weight 'bold)
  (set-face-attribute 'breadcrumb-project-base-face nil :weight 'semibold :foreground calm-fgcolor :family "Barlow Semi Condensed")
  (set-face-attribute 'breadcrumb-project-leaf-face nil :weight 'semibold :family "Barlow Semi Condensed")
  (set-face-attribute 'breadcrumb-imenu-leaf-face nil :inherit 'eaBattery-icon :weight 'semibold :family "Barlow Semi Condensed")

  ;; (set-face-attribute 'link nil :background bgcolor :slant 'oblique  :weight 'regular :overline 'nil :underline 't :family "Barlow Semi Condensed")
  (set-face-attribute 'cursor nil :foreground darker-bgcolor :background calm-fgcolor)
  (set-face-attribute 'evil-mc-cursor-default-face nil :foreground darker-bgcolor :background blue-color )
  (set-face-attribute 'link nil :background darker-bgcolor :slant 'normal  :weight 'regular :overline 'nil :underline 'nil :family "Abel")
  (set-face-attribute 'hl-line nil :background darker-bgcolor)

  (set-face-attribute 'which-key-posframe-border nil :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'which-key-posframe nil :background darker-bgcolor :weight 'bold)

  (set-face-attribute 'evil-ex-info nil :foreground red-color :slant 'oblique :family "Barlow Semi Condensed" )
  (set-face-attribute 'evil-ex-substitute-matches nil :background blue-color :foreground darker-bgcolor :strike-through 't :underline 'nil )
  (set-face-attribute 'evil-ex-substitute-replacement nil :background teal-color :foreground darker-bgcolor :underline 'nil )


  (with-current-buffer " *Echo Area 0*" (face-remap-add-relative 'default '(:family "Iosevka Nerd Font ExtraBold")))

  ;; ------- TREEMACS ----------;;
  (set-face-attribute 'treemacs-file-face nil :inherit 'eaBattery :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-tags-face nil :inherit 'eaBattery :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-help-title-face nil :inherit 'eaBattery :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-help-column-face nil :inherit 'eaBattery :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-git-added-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-git-modified-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-git-untracked-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-git-unmodified-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-directory-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-term-node-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'treemacs-root-face nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )

  (set-face-attribute 'treemacs-hl-line-face nil :background darkest-bgcolor :foreground calm-fgcolor)
  ;; ------- TREEMACS ----------;;

  ;; ------- HYDRA ----------;;
  (set-face-attribute 'hydra-face-red nil :foreground red-color)
  (set-face-attribute 'hydra-face-blue nil :foreground blue-color)
  (set-face-attribute 'hydra-face-teal nil :foreground teal-color)
  (set-face-attribute 'hydra-face-pink nil :foreground pink-color)

  (set-face-attribute 'hydra-posframe-face nil :background darker-bgcolor :weight 'bold)
  (set-face-attribute 'hydra-posframe-border-face nil :background darker-bgcolor :weight 'bold)
  ;; ------- HYDRA ----------;;


  (set-face-attribute 'default nil :font "Iosevka Nerd Font Medium" :height 150)
  (set-face-attribute 'fixed-pitch nil :font "Iosevka Nerd Font Medium" :height 150)
  (set-face-attribute 'font-lock-comment-face nil :slant 'italic)
  (set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
  (set-face-attribute 'line-number nil :font "Iosevka Nerd Font Bold" :height 120)


  (set-face-attribute 'dired-directory nil :foreground calm-fgcolor :family "Barlow Semi Condensed" )
  (set-face-attribute 'dired-header nil :height 260 :font "Abel")
  (set-face-attribute 'dired-marked nil :family "Barlow Semi Condensed")
  (set-face-attribute 'dired-set-id nil :font "Abel")
  (set-face-attribute 'dired-ignored nil :font "Abel")
  (set-face-attribute 'dired-flagged nil :font "Abel")
  (set-face-attribute 'dired-special nil :font "Abel")
  (set-face-attribute 'dired-perm-write nil :font "Abel")

  (set-face-attribute 'help-key-binding nil :font "Barlow SemiCondensed" :weight 'semibold :background darker-bgcolor :foreground dim-fgcolor :box 'nil)

  ;;---------- ORG MODE --------------;;
  (with-eval-after-load 'org-faces
    (set-face-attribute 'org-block nil :background darker-bgcolor)
    (set-face-attribute 'org-block-end-line nil :background darker-bgcolor)
    (set-face-attribute 'org-block-begin-line nil :background darker-bgcolor)
    (set-face-attribute 'org-time-grid nil :foreground dim-fgcolor)
    ;; Set faces for heading levels
    (set-face-attribute 'org-meta-line nil :height 90)
    (set-face-attribute 'org-level-1 nil :height 250 :family "Abel" :weight 'regular :foreground lavender-color)
    (set-face-attribute 'org-level-2 nil :height 240 :family "Abel" :weight 'regular :foreground lavender-color)
    (set-face-attribute 'org-level-3 nil :height 235 :family "Abel" :weight 'regular :foreground lavender-color)
    (set-face-attribute 'org-level-4 nil :height 230 :family "Abel" :weight 'regular :foreground lavender-color)
    (set-face-attribute 'org-level-5 nil :height 225 :family "Abel" :weight 'regular :foreground blue-color)
    (set-face-attribute 'org-level-6 nil :height 220 :family "Abel" :weight 'regular :foreground blue-color)
    (set-face-attribute 'org-level-7 nil :height 215 :family "Abel" :weight 'regular :foreground pink-color)
    (set-face-attribute 'org-level-8 nil :height 210 :family "Abel" :weight 'regular :foreground pink-color)

    ;; Table
	(set-face-attribute 'org-table nil :font "Abel" :background darker-bgcolor)

	;; agenda
	(set-face-attribute 'org-agenda-date nil :font "Abel" :weight 'regular :height 200 :foreground pink-color)
	(set-face-attribute 'org-agenda-date-today nil :font "Barlow SemiCondensed" :weight 'semibold :height 200 )
	(set-face-attribute 'org-agenda-done nil :font "Abel" :weight 'regular :height 190 :strike-through 't)
	(set-face-attribute 'org-agenda-structure nil :font "Abel" :weight 'regular :height 230 :foreground blue-color)

	(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
	(set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch) :family "Iosevka Nerd Font")
	(set-face-attribute 'org-table nil   :inherit '(shadow fixed-pitch) :family "Iosevka Nerd Font")
	(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch) :family "Iosevka Nerd Font")
	(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
	(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
	(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch))

  (set-face-attribute 'org-document-title nil :height 260 :font "Abel")

  (set-face-attribute 'org-done nil :slant 'normal :strike-through 't :foreground dim-fgcolor)

  ;;---------- ORG MODE --------------;;

  (with-current-buffer " *Echo Area 0*" (face-remap-add-relative 'default '(:family "Iosevka Nerd Font ExtraBold")))

  (set-face-attribute 'dashboard-banner-logo-title-face nil :inherit 'fixed-pitch :foreground "#CBA6F7")


  (set-face-attribute 'eaBuf nil :weight 'bold :inherit 'ansi-color-white)
  (set-face-attribute 'eaDate nil :weight 'bold :inherit 'ansi-color-white)
  (set-face-attribute 'eaTime nil :weight 'bold :inherit 'ansi-color-white)
  (set-face-attribute 'eaBattery nil :weight 'bold :inherit 'ansi-color-white)
  ;; (remove-hook 'after-make-frame-functions #'configure-face)
  )
(add-hook 'after-make-frame-functions #'configure-face)


;; kind icons default FACES
;;   '((array "a" :icon "code-brackets" :face font-lock-type-face)
;;     (boolean "b" :icon "circle-half-full" :face font-lock-builtin-face)
;;     (class "c" :icon "view-grid-plus-outline" :face font-lock-type-face)
;;     (color "#" :icon "palette" :face success)
;;     (command "cm" :icon "code-greater-than" :face default)
;;     (constant "co" :icon "lock-remove-outline" :face font-lock-constant-face)
;;     (constructor "cn" :icon "table-column-plus-after" :face font-lock-function-name-face)
;;     ;; FIXME: remove this once eglot patch is in Emacs
;;     (enummember "em" :icon "order-bool-ascending-variant" :face font-lock-builtin-face)
;;     (enum-member "em" :icon "order-bool-ascending-variant" :face font-lock-builtin-face)
;;     (enum "e" :icon "format-list-bulleted-square" :face font-lock-builtin-face)
;;     (event "ev" :icon "lightning-bolt-outline" :face font-lock-warning-face)
;;     (field "fd" :icon "application-braces-outline" :face font-lock-variable-name-face)
;;     (file "f" :icon "file-document-outline" :face font-lock-string-face)
;;     (folder "d" :icon "folder" :face font-lock-doc-face)
;;     (interface "if" :icon "application-brackets-outline" :face font-lock-type-face)
;;     (keyword "kw" :icon "key-variant" :face font-lock-keyword-face)
;;     (macro "mc" :icon "lambda" :face font-lock-keyword-face)
;;     (magic "ma" :icon "auto-fix" :face font-lock-builtin-face)
;;     (method "m" :icon "function-variant" :face font-lock-function-name-face)
;;     (function "f" :icon "function" :face font-lock-function-name-face)
;;     (module "{" :icon "file-code-outline" :face font-lock-preprocessor-face)
;;     (numeric "nu" :icon "numeric" :face font-lock-builtin-face)
;;     (operator "op" :icon "plus-minus" :face font-lock-comment-delimiter-face)
;;     (param "pa" :icon "cog" :face default)
;;     (property "pr" :icon "wrench" :face font-lock-variable-name-face)
;;     (reference "rf" :icon "library" :face font-lock-variable-name-face)
;;     (snippet "S" :icon "note-text-outline" :face font-lock-string-face)
;;     (string "s" :icon "sticker-text-outline" :face font-lock-string-face)
;;     (struct "%" :icon "code-braces" :face font-lock-variable-name-face)
;;     (text "tx" :icon "script-text-outline" :face font-lock-doc-face)
;;     ;; FIXME: remove this once eglot patch is in Emacs
;;     (typeparameter "tp" :icon "format-list-bulleted-type" :face font-lock-type-face)
;;     (type-parameter "tp" :icon "format-list-bulleted-type" :face font-lock-type-face)
;;     (unit "u" :icon "ruler-square" :face font-lock-constant-face)
;;     (value "v" :icon "plus-circle-outline" :face font-lock-builtin-face)
;;     (variable "va" :icon "variable" :face font-lock-variable-name-face)
;;     (t "." :icon "crosshairs-question" :face font-lock-warning-face))


(provide 'uiChanges)
;;; completed
