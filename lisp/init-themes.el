;; ~/.emacs.d/lisp/init-themes.el

(use-package srcery-theme
     :config
     (load-theme 'srcery t))
;;(load-theme 'solarized-dark t)

(if (not (display-graphic-p))
    (progn
      ;; 在终端环境下加载的配置
      (set-frame-font "Source Code Pro-17")
      )
  ;; 在图形界面下加载的配置
  (set-frame-font "Source Code Pro-15")
  )

(provide 'init-themes)
;; init-themes.el ends here
