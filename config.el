;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Eric Norman"
      user-mail-address "eric.norman98@hotmail.se")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 14))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Journals
(setq org-journal-dir "~/org/journal/")
(setq org-journal-date-format "%A, %Y-%m-%d")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


(setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f"))

;;
;;; Keybindings

;; Change switch to last buffer to leader+TAB
(map! :leader
      "TAB" 'evil-switch-to-windows-last-buffer)

;; Change the workspace bindings to use M-§ instead
(map! :g
      "M-§ n" '+workspace/new
      "M-§ §" '+workspace/display
      "M-§ l" '+workspace/load
      "M-§ L" '+workspace/load-session
      "M-§ s" '+workspace/save
      "M-§ S" '+workspace/save-session
      "M-§ ." '+workspace/switch-to
      "M-§ X" '+workspace/kill-session)

; Comment/Uncomment lines
(map! :leader
      "c l" 'evilnc-comment-or-uncomment-lines)

; Journals
(map! :leader
      "j" 'org-journal-new-entry)

(map! :map python-mode-map
      :localleader
      "c" 'python-shell-send-buffer
      "r" 'run-python)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
