;;; My Personal Emacs Customizations

;;; Code:
;;; -----------------------------------------------------------------
;;;      My Key Bindings
;;; -----------------------------------------------------------------

(global-set-key (kbd "C-h") 'delete-backward-char)

;; Super Hyper Alt Meta (SHAM) Wackadoodlery
(setq mac-command-modifier 'meta)         ;; Meta M- := Cmnd
(setq mac-option-modifier 'super)
(setq mac-right-option-modifier 'alt)     ;; Alt  A- := Option
(setq ns-function-modifier 'hyper)
(setq mac-right-command-modifier 'hyper)

(global-set-key (kbd "A-h") 'paredit-backward-delete)

;; "Hyper" Ergo Navigation
(global-set-key (kbd "H-c") 'previous-line)  ;; "up"
(global-set-key (kbd "H-n") 'forward-char)   ;; "left"
(global-set-key (kbd "H-t") 'next-line)      ;; "down"
(global-set-key (kbd "H-h") 'backward-char)  ;; "right"


;; H-M ... two thumbs down :) thumbs are stronger than pinkies...
(global-set-key (kbd "H-M-t") (lambda () (interactive) (forward-line 10)))   ;; down
(global-set-key (kbd "H-M-c") (lambda () (interactive) (forward-line -10)))  ;; up
(global-set-key (kbd "H-M-n") 'forward-word)    ;; "right"
(global-set-key (kbd "H-M-h") 'backward-word)   ;; "left"

(global-set-key (kbd "H-C-n") 'move-end-of-line)        ;; previous C-e
(global-set-key (kbd "H-C-h") 'move-beginning-of-line)  ;; previous C-a

(global-set-key (kbd "H-M-t") (kbd "M-n"))
(global-set-key (kbd "H-M-c") (kbd "M-p"))

(global-set-key (kbd "s-h") 'helm-occur)
(global-set-key (kbd "s-t") 'helm-do-grep-ag)

(global-set-key (kbd "H-M-.") )
(global-set-key (kbd "H-M-o") )
(global-set-key (kbd "H-M-e") )
(global-set-key (kbd "H-M-u") )


;; Dvorak nicety, regardless of loading settings
(define-key key-translation-map "\C-t" "\C-x")

;; Switching Buffers
(global-set-key [C-tab] 'switch-to-next-buffer)
(global-set-key [C-M-tab] 'switch-to-prev-buffer)
(global-set-key [M-right] 'switch-to-next-buffer)
(global-set-key [M-left] 'switch-to-prev-buffer)

(global-set-key [C-s-right] 'shrink-window-horizontally)
(global-set-key [C-s-left] 'enlarge-window-horizontally)
(global-set-key [C-s-up] 'shrink-window)
(global-set-key [C-s-down] 'enlarge-window)

;; Splitting and manipulating windows
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)
(global-set-key (kbd "s-1") 'delete-other-windows)
;; Move Window with Mouse
(global-set-key [s-wheel-down] 'shrink-window)
(global-set-key [s-wheel-up] 'enlarge-window)
(global-set-key [s-wheel-left] 'shrink-window-horizontally)
(global-set-key [s-wheel-right] 'enlarge-window-horizontally)
;; use shift-arrow to move
(windmove-default-keybindings)
(global-set-key (kbd "H-u") 'windmove-right)
(global-set-key (kbd "H-o") 'windmove-left)
(global-set-key (kbd "H-.") 'windmove-up)
(global-set-key (kbd "H-e") 'windmove-down)

;; cycle to next frame (detached "window")
(global-set-key [s-tab] 'ns-next-frame)

;; (global-set-key [wheel-right] 'scroll-left)
;; (global-set-key [wheel-left] 'scroll-right)

(global-set-key (kbd "A-t") 'helm-do-grep-ag)

(global-set-key [C-return] 'helm-M-x)
(global-set-key (kbd "M-t") 'helm-M-x)
;; (global-set-key [M-return] 'other-window)
(global-set-key [M-return] 'neotree-toggle)
;; (global-set-key [s-return] 'speedbar)

(global-set-key (kbd "C-c f") 'helm-recentf)


(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; (global-set-key (kbd "s-`") 'scroll-restore-mode)
;; (global-set-key (kbd "C-c T") 'get-term) ;; create new term

(global-set-key (kbd "M-`") 'other-window)

(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-/") 'projectile-grep)

(global-set-key (kbd "s-b") 'browse-url-at-point)

;; (global-set-key (kbd "C-c g") 'helm-google)

;;; ---------- End My Keybindings ------------------------------------


;;; ------------------------------------------------------------------
;;; My Modes:
;;; ------------------------------------------------------------------

(require 'centered-cursor-mode)
(global-centered-cursor-mode -1)

;; (tramp-set-completion-function "ssh"
                               ;; '((tramp-parse-sconfig "~/.ssh/config")))

;; show system name and current buffer's full file path in window
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; mail client
(setq mail-user-agent 'mu4e-user-agent)

;; Chrome Extension: Edit with Emacs
(require 'edit-server)
(edit-server-start)

(setq ring-bell-function 'ignore)

(use-package undo-tree
  :commands global-undo-tree-mode
  :diminish global-undo-tree-mode)

(global-undo-tree-mode)

;; thesaurus api key
(setq thesaurus-bhl-api-key "93daf90302a27348144b0c6a945eea62")

;;;=======================================================
;;            Transparency
;;;=======================================================

(set-frame-parameter (selected-frame) 'alpha '(90 90))
(add-to-list 'default-frame-alist '(alpha 90 90))

;; (eval-when-compile (require 'cl))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(90 90))))

(global-set-key (kbd "C-c h") 'toggle-transparency)

;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0 = transparent, 100 = opaque"
  (interactive "nTransparency Value 0 - 100 opaque: ")
  (set-frame-parameter (selected-frame) 'alpha value))

;;;=======================================================

;; initial window
(setq initial-frame-alist
      '((width . 200) (height . 65) (left . 50) (top . 50)))

;; default/sebsequent window
(setq default-frame-alist
      '((width . 170) (height . 50) (left . 300) (top . 100)))




(defun open-atom ()
  (interactive)
  (call-process
   "atom" nil t nil buffer-file-name))

(defun open-in-browser ()
  (interactive)
  (let ((filename (buffer-file-name)))
    (browse-url (concat "file://" filename))))





;;; ====================================================================
;;;  Config for mu mail client


;;; Code:
;; reference: https://www.emacswiki.org/emacs/mu4e

;; from here: https://gist.github.com/areina/3879626
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
(require 'mu4e)

;; default
(setq mu4e-maildir (expand-file-name "~/Maildir"))

(setq mu4e-drafts-folder "/[Gmail].Drafts")
(setq mu4e-sent-folder   "/[Gmail].Sent Mail")
(setq mu4e-trash-folder  "/[Gmail].Trash")

;; don't save message to Sent Messages, GMail/IMAP will take care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
(setq mu4e-maildir-shortcuts
      '(("/INBOX"             . ?i)
        ("/[Gmail].Sent Mail" . ?s)
        ("/[Gmail].Trash"     . ?t)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap -q")
(setq mu4e-attachment-dir  "~/downloads")

(setq
 mu4e-get-mail-command "offlineimap -q"   ;; or fetchmail, or ...
 mu4e-update-interval (* 5 60))              ;; update every x seconds

;; something about ourselves
;; I don't use a signature...
(setq
 user-mail-address "zee.larson@gmail.com"
 user-full-name  "Zachary Larson"
 message-signature
  (concat
    "Zachary Larson\n"
    "928.380.8156\n"
    ))


;;; formal/informal signatures
;; (defun my-mu4e-choose-signature ()
;;   "Insert one of a number of sigs"
;;   (interactive)
;;   (let ((message-signature
;;          (mu4e-read-option "Signature:"
;;                            '(("formal" .
;;                               (concat
;;                                "Joe Bloggs\n"
;;                                "Department, Company Name, Country\n"
;;                                "W: http://www.example.com\n"))
;;                              ("informal" .
;;                               "Joe\n")))))
;;     (message-insert-signature)))

;; (add-hook 'mu4e-compose-mode-hook
;;           (lambda () (local-set-key (kbd "C-c C-w") #'my-mu4e-choose-signature)))



;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu, 'gnutls' in Archlinux.

(require 'smtpmail)

(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-starttls-credentials
      '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials
      (expand-file-name "~/.authinfo.gpg")
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)


;; enable inline images
(setq mu4e-view-show-images t)
;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))


;; spell check
(add-hook 'mu4e-compose-mode-hook
          (defun my-do-compose-stuff ()
            "My settings for message composition."
            (set-fill-column 72)
            (flyspell-mode)))

(setq mu4e-html2text-command
      "textutil -stdin -format html -convert txt -stdout")

;; change lumosity for dark themes
;; (setq shr-color-visible-luminance-min 80)

(add-hook 'mu4e-view-mode-hook
          (lambda ()
            (visual-line-mode t)))


;; Actions
;; activate using aV
(add-to-list 'mu4e-view-actions
             '("ViewInBrowser" . mu4e-action-view-in-browser) t)


;; gpg
(add-hook 'mu4e-compose-mode-hook 'epa-mail-mode)
(add-hook 'mu4e-view-mode-hook 'epa-mail-mode)

;;   Mu Mailer ends here
;;; ==================================================================




;; term
(defface term-color-black
  '((t (:foreground "#dcdccc" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-red
  '((t (:foreground "#cc9393" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-green
  '((t (:foreground "#7f9f7f" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-yellow
  '((t (:foreground "#f0dfaf" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-blue
  '((t (:foreground "#6d85ba" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-magenta
  '((t (:foreground "#dc8cc3" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-cyan
  '((t (:foreground "#93e0e3" :background "#272822")))
  "Unhelpful docstring.")
(defface term-color-white
  '((t (:foreground "#dcdccc" :background "#272822")))
  "Unhelpful docstring.")
'(term-default-fg-color ((t (:inherit term-color-white))))
'(term-default-bg-color ((t (:inherit term-color-black))))

;; ansi-term colors
(setq ansi-term-color-vector
      [term term-color-black term-color-red term-color-green term-color-yellow
            term-color-yellow term-color-magenta term-color-cyan term-color-white])


;; set generic browse to be use OS X `open`
(setq browse-url-generic-program "open")


;; http://stackoverflow.com/questions/13671839/cant-launch-lein-repl-in-emacs
(add-to-list 'exec-path "/usr/local/bin")

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; for a nice mode-line (that is still performant)
(require 'powerline)
(powerline-default-theme)

(global-unset-key (kbd "C-M-<space>"))
(global-set-key (kbd "C-M-<space>") 'ace-jump-mode)

(global-set-key (kbd "C-c s") 'zenity-cp-adjust-color-at-point)

(global-set-key (kbd "C-c n") 'zenity-cp-color-at-point-dwim)


;; Periodically save Recent Files
(run-at-time nil (* 10 60) 'recentf-save-list)


;; http://emacs.stackexchange.com/questions/413/tree-based-directory-browser
(define-key dired-mode-map "i" 'dired-subtree-insert)
(define-key dired-mode-map ";" 'dired-subtree-remove)

(diminish 'global-undo-tree-mode)

(global-set-key (kbd "C-M-s") #'flx-isearch-forward)
(global-set-key (kbd "C-M-r") #'flx-isearch-backward)


;; for swank-js
;; http://www.idryman.org/blog/2013/03/23/installing-swank-dot-js/
(setq inferior-lisp-program "/usr/local/bin/sbcl")
;; (require 'slime)

;; (autoload 'js2-mode "js2-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))




;; more options are good, right? uhhhhm...  \_(ツ)_/¯
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))



(defun hieros-list-buffers (&optional arg)
  "Display a list of existing buffers.
    The list is displayed in a buffer named \"*Buffer List*\".
    See `buffer-menu' for a description of the Buffer Menu.

     By default, all buffers are listed except those whose names start
    with a space (which are for internal use).  With prefix argument
    ARG, show only buffers that are visiting files."
  (interactive "P")
  (switch-to-buffer (list-buffers-noselect arg)))

(global-set-key (kbd "C-x C-b") 'hieros-list-buffers)


(global-set-key (kbd "C-M-l") 'helm-projectile-ag)

(global-set-key (kbd "M-s") (kbd "RET"))
(global-set-key (kbd "H-s") (kbd "RET"))


(defun hierophantos-paredit-mode-hook ()
  "Paredit is stealing M-s. We want that bound to RET")




;; http://superuser.com/questions/527356/dont-change-the-cursor-position-when-scrolling-in-emacs
;;; scrollers - M-f, M-b
;; (global-set-key "\M-f" "\C-u1\C-v")
;; (global-set-key "\M-b" "\C-u1\M-v")
(global-set-key (kbd "M-f") 'forward-word)
(global-set-key (kbd "M-b") 'backward-word)

(global-set-key (kbd "M-h") 'backward-kill-word)




(eval-after-load 'paredit
  '(progn
     (define-key paredit-mode-map (kbd "M-s") (kbd "RET"))))


;; multiple cursors
(global-set-key (kbd "H-m") (kbd "<insert>"))
(global-set-key (kbd "H-M-m") (kbd "S-<insert>"))

(global-set-key (kbd "H-r") 'helm-recentf)


(provide 'user)
