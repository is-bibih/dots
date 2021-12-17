(in-package #:nyxt-user)

;; always restores session
(define-configuration browser
  ((session-restore-prompt :always-restore)))

;; default modes
(define-configuration (web-buffer nosave-buffer)
  ((default-modes (append
                   '(blocker-mode
                     reduce-tracking-mode)
                   %slot-default%))))

;; custom keybindings
;(define-configuration base-mode
;  ((keymap-scheme
;    (define-scheme (:name-prefix "my-vi-normal" :import %slot-default%)
;      scheme:vi-normal
;      (list "P p" (make-command get-password* ()
;                    (get-password :copy-password))
;            "P u" (make-command get-username* ()
;                     (get-username :copy-username))
;            "P a" (make-command new-pass* ()
;                      (new-pass :save-new-password))
;      )))))

;; define custom search engines
(defvar *custom-search-engines*
  (list
    '("lg" "https://libgen.is/search.php?req=~a" "https://libgen.is/")
    '("sh" "https://sci-hub.se/~a" "https://sci-hub.se/")
    '("ny" "https://nyaa.si/?f=0&c=0_0&q=~a" "https://nyaa.si/")
    '("au" "https://aur.archlinux.org/packages/?O=0&K=~a" "https://aur.archlinux.org/packages/")
    '("aw" "https://wiki.archlinux.org/index.php?search=~a" "https://wiki.archlinux.org/"))
  "list of search engines")

;; add search engines
(define-configuration buffer
  ((search-engines (append (mapcar (lambda (engine) (apply 'make-search-engine engine))
                                   *custom-search-engines*)
                           %slot-default%))))

;; import style files
(dolist (file (list (nyxt-init-file "stylesheet.lisp")))
  (load file))

