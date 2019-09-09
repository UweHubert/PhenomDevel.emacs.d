(require 'package)

(setq package-archives
      '(("melpa" . "http://melpa.org/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("smelpa" . "https://stable.melpa.org/packages/")))

(setq package-enable-at-startup nil)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; NOTE: Packages which should always be loaded
(defvar default-packages
  '(use-package
    diminish
    ;; ,,,
    ))

(dolist (p default-packages)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p)))


;; ========================================
;; Requires

;; Basics
(require 'use-package)
(require 'setup__swiper)
(require 'setup__ido-completing-read+)
(require 'setup__crm-custom)
(require 'setup__ido)
(require 'setup__ido-vertical-mode)
(require 'setup__multiple-cursors)
(require 'setup__company)
;; (require 'setup__company-quickhelp)
(require 'setup__counsel)
(require 'setup__smex)
(require 'setup__fullframe)
(require 'setup__which-key)
(require 'setup__rainbow-mode)

;; Appeareance
(require 'setup__emacs)
(require 'setup__theme)
(require 'setup__minor-mode-line)

;; Project Helper
(require 'setup__projectile)
(require 'setup__yasnippet)
(require 'setup__magit)
(require 'setup__magit-popup)

;; Programming
(require 'setup__highlight-symbol)
(require 'setup__rainbow-delimiters)
(require 'setup__cider)
(require 'setup__paxedit)
(require 'setup__clj-refactor)
(require 'setup__cider-eval-sexp-fu)
(require 'setup__expand-region)
(require 'setup__clojure-mode)
(require 'setup__paredit)

;; TODO Later

;; lua-mode
;; sass-mode
;; markdown-mode, markdown-mode+
;; flycheck,
;; flycheck-pos-tip?

(provide 'config)