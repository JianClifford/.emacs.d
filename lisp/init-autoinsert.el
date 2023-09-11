;; ~/.emacs.d/lisp/init-autoinsert.el

;; 启用auto-insert-mode
(auto-insert-mode)

;; 定义文件头模板
(setq auto-insert-alist
      '(((python-mode . "Python program") nil
         "#!/usr/bin/env python\n"
         "# -*- coding: utf-8 -*-\n"
         "# **************************************************************************\n"
         "# Copyright © " (substring (current-time-string) -4) "Jian\n"
         "# File Name: " (file-name-nondirectory buffer-file-name) "\n"
         "# Author: Jian\n"
         "# Email: jian.linlong@foxmial.com\n"
         "# Created: " (format-time-string "%Y-%m-%d %T (%Z)" (current-time)) "\n"
         "# Last Update: " (format-time-string "%Y-%m-%d %T (%Z)" (current-time)) "\n"
         "#          By: \n"
         "# Description: \n"
         "# **************************************************************************\n")
        ((c-mode . "C program") nil
         "/**************************************************************************\n"
         " Copyright © " (substring (current-time-string) -4) " Jian \n"
         " File Name: " (file-name-nondirectory buffer-file-name) "\n"
         " Author: Jian\n"
         " Email: jian.linlong@foxmail.com\n"
         " Created: " (format-time-string "%Y-%m-%d %T (%Z)" (current-time)) "\n"
         " Last Update: \n"
         "           By: \n"
         " Description: \n"
         " **************************************************************************/\n"
         "#include<stdio.h>\n"
         "#include<string.h>\n")
	((org-mode . "org file") nil
	 "--mode:org;--\n"
	 "#+TITLE:"(file-name-nondirectory buffer-file-name)"\n"
	 "#+AUTHOR:Jian\n"
	 "#+DATE:" (format-time-string "%Y-%m-%d %T (%Z)" (current-time)) "\n"
	 "#+EMAIL:jian.linlong@foxmail.com\n"
	 "#+STARTUP:indent\n"
	 )
        ((sh-mode . "Shell script") nil
         "#!/bin/bash\n"
         "# **************************************************************************\n"
         "# Copyright © " (substring (current-time-string) -4) " " (user-full-name) "\n"
         "# File Name: " (file-name-nondirectory buffer-file-name) "\n"
         "# Author: " (user-full-name)"\n"
         "# Email: " user-mail-address "\n"
         "# Created: " (format-time-string "%Y-%m-%d %T (%Z)" (current-time)) "\n"
         "# Last Update: \n"
         "#          By: \n"
         "# Description: \n"
         "# **************************************************************************/\n")))

;; 在插入文件时自动调用模板
(setq auto-insert-query nil)

;; 定义文件头模板的路径




(provide 'init-autoinsert)
;; init-autoinsert.el ends here
