(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#263238" "#74CBC4" "#546D7A" "#C792EA" "#82B1FF" "#FFCB6B" "#FF516D" "#CDD3D3"])
 '(ansi-term-color-vector
   [unspecified "#081724" "#ff694d" "#68f6cb" "#fffe4e" "#bad6e2" "#afc0fd" "#d2f1ff" "#d3f9ee"] t)
 '(clojure-indent-style :always-indent)
 '(company-idle-delay 0.3)
 '(custom-enabled-themes (quote (tangotango)))
 '(custom-safe-themes
   (quote
    ("f64c9f8b4241b680b186f4620afb9c82fa2a76cf4498a7431f90db59bb1892eb" "dba244449b15bdc6a3236f45cec7c2cb03de0f5cf5709a01158a278da86cb69b" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "5999e12c8070b9090a2a1bbcd02ec28906e150bb2cdce5ace4f965c76cf30476" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "8f0334c430540bf45dbcbc06184a2e8cb01145f0ae1027ce6b1c40876144c0c9" "304c03c9cfcd368b4ab0832357788cd48513fe1bd89b9e531dd47886a83405a1" "133222702a3c75d16ea9c50743f66b987a7209fb8b964f2c0938a816a83379a0" "b5fe3893c8808466711c1b55bb7e66b9c6aa2a86811783375a43e1beabb1af33" "b61c55259c639a54628f91452b060b99c550a1269eb947e372321b806b68f114" "fbcdb6b7890d0ec1708fa21ab08eb0cc16a8b7611bb6517b722eba3891dfc9dd" "e8586a76a96fd322ccb644ca0c3a1e4f4ca071ccfdb0f19bef90c4040d5d3841" "6998bd3671091820a6930b52aab30b776faea41449b4246fdce14079b3e7d125" "0788bfa0a0d0471984de6d367bb2358c49b25e393344d2a531e779b6cec260c5" "86a731bda96ed5ed69980b4cbafe45614ec3c288da3b773e4585101e7ece40d2" "51277c9add74612c7624a276e1ee3c7d89b2f38b1609eed6759965f9d4254369" "beeb5ac6b65fcccfe434071d4624ff0308b5968bf2f0c01b567d212bcaf66054" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "7dd0db710296c4cec57c39068bfffa63861bf919fb6be1971012ca42346a417f" "b747fb36e99bc7f497248eafd6e32b45613ee086da74d1d92a8da59d37b9a829" "c0dd5017b9f1928f1f337110c2da10a20f76da0a5b14bb1fec0f243c4eb224d4" "a621dd9749f2651e357a61f8d8d2d16fb6cacde3b3784d02151952e1b9781f05" "0f302165235625ca5a827ac2f963c102a635f27879637d9021c04d845a32c568" "6a674ffa24341f2f129793923d0b5f26d59a8891edd7d9330a258b58e767778a" "5e402ccb94e32d7d09e300fb07a62dc0094bb2f16cd2ab8847b94b01b9d5e866" "ff6a8955945028387ed1a2b0338580274609fbb0d40cd011b98ca06bd00d9233" "0973b33d2f15e6eaf88400eee3dc8357ad8ae83d2ca43c125339b25850773a70" "b48599e24e6db1ea612061252e71abc2c05c05ac4b6ad532ad99ee085c7961a7" "72c530c9c8f3561b5ab3bf5cda948cd917de23f48d9825b7a781fe1c0d737f2f" "cb39485fd94dabefc5f2b729b963cbd0bac9461000c57eae454131ed4954a8ac" "09feeb867d1ca5c1a33050d857ad6a5d62ad888f4b9136ec42002d6cdf310235" "a455366c5cdacebd8adaa99d50e37430b0170326e7640a688e9d9ad406e2edfd" "aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "2305decca2d6ea63a408edd4701edf5f4f5e19312114c9d1e1d5ffe3112cde58" "790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "e97dbbb2b1c42b8588e16523824bc0cb3a21b91eefd6502879cf5baa1fa32e10" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "8e00def3665690f92fe007e085bc7d9a28ba531a4ebc4b872f56f9348b1f6207" default)))
 '(fci-rule-color "#232A2F")
 '(global-git-gutter-mode t)
 '(global-linum-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indentation turn-on-haskell-doc)) t)
 '(helm-mode t)
 '(hl-sexp-background-color "#efebe9")
 '(js2-strict-missing-semi-warning nil)
 '(monroe-default-host "localhost:")
 '(multi-term-default-dir "~/dev")
 '(multi-term-program "/bin/zsh")
 '(neo-dont-be-alone t)
 '(neo-hidden-regexp-list (quote ("^\\.")))
 '(neo-show-hidden-files nil)
 '(neo-theme (quote arrow))
 '(neo-window-fixed-size nil)
 '(neo-window-width 18)
 '(ohai-personal-taste/paredit t)
 '(ohai-personal-taste/run-wizard nil)
 '(ohai-personal-taste/splash nil)
 '(ohai-personal-taste/style (quote dark))
 '(ohai-personal-taste/training-wheels nil)
 '(ohai-personal-taste/window-state (quote normal))
 '(ohai/modules
   (quote
    (ohai-appearance ohai-fonts ohai-general ohai-splash ohai-ido ohai-navigation ohai-editing ohai-complete ohai-snippets ohai-codestyle ohai-dired ohai-project ohai-flycheck ohai-git ohai-orgmode ohai-help ohai-elisp ohai-helm ohai-eshell ohai-refactor ohai-emoji ohai-html ohai-markdown ohai-javascript ohai-js-web-mode ohai-clojure ohai-erlang ohai-elixir ohai-haskell ohai-flow)))
 '(package-selected-packages
   (quote
    (ace-jump-mode csharp-mode paredit-menu js-comint elscreen tangotango-theme tao-theme theme-looper tommyh-theme toxi-theme hc-zenburn-theme esup clojure-mode-extra-font-locking color-theme-sanityinc-tomorrow colorsarenice-theme silkworm-theme tronesque-theme spacemacs-theme fireplace thesaurus undo-tree clojurescript-mode slack which-key web-mode web volatile-highlights use-package typescript-mode tabbar swiper-helm smex shrink-whitespace rainbow-mode rainbow-delimiters paradox palette org-plus-contrib org-cliplink org-bullets nyan-mode neotree multi-term monroe material-theme markdown-mode magit json-mode js2-refactor ido-vertical-mode ido-ubiquitous hlinum highlight-parentheses helm-projectile git-gutter-fringe gist flycheck-haskell flycheck-color-mode-line flx-ido f expand-region ethan-wspace eshell-git-prompt erlang emr emojify edit-server discover-my-major dired+ company-try-hard company-tern company-quickhelp company-emoji color-theme-sanityinc-solarized clojure-quick-repls clj-refactor aurora-theme anzu alchemist ace-window)))
 '(rainbow-identifiers-cie-l*a*b*-lightness 70)
 '(rainbow-identifiers-cie-l*a*b*-saturation 20)
 '(tabbar-mode nil nil (tabbar))
 '(vc-annotate-background "#2B3B40")
 '(vc-annotate-color-map
   (quote
    ((20 . "#74CBC4")
     (40 . "#74CBC4")
     (60 . "#C2E982")
     (80 . "#FFC400")
     (100 . "#C792EA")
     (120 . "#C792EA")
     (140 . "#546D7A")
     (160 . "#546D7A")
     (180 . "#FF516D")
     (200 . "#9FC59F")
     (220 . "#859900")
     (240 . "#F77669")
     (260 . "#FF516D")
     (280 . "#82B1FF")
     (300 . "#82B1FF")
     (320 . "#82B1FF")
     (340 . "#D9F5DD")
     (360 . "#FFCB6B"))))
 '(vc-annotate-very-old-color "#FFCB6B")
 '(web-mode-enable-element-tag-fontification t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat3"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "gold1"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "chartreuse2"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dodger blue"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "turquoise3"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "hot pink"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "tomato3"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "SpringGreen2")))))
