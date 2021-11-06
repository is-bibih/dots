;;; set statusline icons
(define-configuration status-buffer ((glyph-mode-presentation-p t)))
(define-configuration nyxt/force-https-mode:force-https-mode ((glyph "")))
(define-configuration nyxt/blocker-mode:blocker-mode ((glyph "")))
(define-configuration nyxt/proxy-mode:proxy-mode ((glyph "")))
(define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode  ((glyph "")))
(define-configuration nyxt/certificate-exception-mode:certificate-exception-mode ((glyph "")))
(define-configuration nyxt/style-mode:style-mode ((glyph "")))
(define-configuration nyxt/help-mode:help-mode ((glyph "")))

;;; webpage colors
(define-configuration window
  ((message-buffer-style
    (str:concat
     %slot-default%
     (cl-css:css
      '((body
         :background-color "#282a36"
         :color "#f8f8f2")))))))

;; prompt
(define-configuration prompt-buffer
  ((style (str:concat
           %slot-default%
           (cl-css:css
            '((body
               :background-color "#282a36"
               :color "#f8f8f2")
              ("#prompt-area"
               :background-color "#282a36")
              ("#input"
               :background-color "#6272a4"
               :color "#f8f8f2")
              (".source-name"
               :color "#f8f8f2"
               :background-color "#bd93f9")
              (".source-content"
               :background-color "#282a36")
              (".source-content th"
               :border "1px solid #bd93f9"
               :background-color "#282a36")
              ("#selection"
               :background-color "#44475a"
               :color "#f8f8f2")
              (.marked :background-color "#ff5555"
                       :font-weight "bold"
                       :color "#f8f8f2")
              (.selected :background-color "#282a36"
                         :color "#f8f8f2")))))))

(define-configuration internal-buffer
  ((style
    (str:concat
     %slot-default%
     (cl-css:css
      '((title
         :color "#ff79c6")
        (body
         :background-color "#21222C"
         :color "#f8f8f2")
        (hr
         :color "#44475a")
        (a
         :color "#6272a4")
        (.button
         :color "#f8f8f2"
         :background-color "#44475a")))))))

;; Configure History Tree Mode
(define-configuration nyxt/history-tree-mode:history-tree-mode
  ((nyxt/history-tree-mode::style
    (str:concat
     %slot-default%
     (cl-css:css
      '((body
         :background-color "#21222C"
         :color "lightgray")
        (hr
         :color "darkgray")
        (a
         :color "#50fa7b")
        ("ul li::before"
         :background-color "#f8f8f2")
        ("ul li::after"
         :background-color "#f8f8f2")
        ("ul li:only-child::before"
         :background-color "#f8f8f2")))))))

;; Highlight Hint Buttons
(define-configuration nyxt/web-mode:web-mode
  ((nyxt/web-mode:highlighted-box-style
    (cl-css:css
     '((".nyxt-hint.nyxt-highlight-hint"
        :background "#ff5555")))
    :documentation "The style of highlighted boxes, e.g. link hints.")))

;; Configure StatusLines Styles
(define-configuration status-buffer
  ((style (str:concat
           %slot-default%
           (cl-css:css
            '(("#container"
               ;; Columns: controls, arrow, url, arrow, tabs, arrow, modes
               :grid-template-columns "10px 10px 1fr 10px 2fr 10px 250px")
              ("#controls"
               :border-top "1px solid #6272a4")
              ("#url"
               :background-color "#21222C"
               :color "#f8f8f2"
               :border-top "1px solid #6272a4")
              ("#modes"
               :background-color "#21222C"
               :border-top "1px solid #6272a4")
              ("#tabs"
               :background-color "#6272a4"
               :color "#f8f8f2"
               :border-top "1px solid #6272a4")))))))
