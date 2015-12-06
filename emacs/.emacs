;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    .emacs                                             :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: gcourrie <gcourrie@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/12/5 18:20:01 by gcourrie           #+#    #+#              ;
;    Updated: 2015/12/06 14:33:38 by gcourrie         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

;;----------------------------------------------------------------------------;;
;;                       Set default emacs configuration                      ;;
;;----------------------------------------------------------------------------;;

;; Universal Character Set Transformation Format - 8 bits
(set-language-environment "UTF-8")

;; Set color with Font clock mode
(setq-default font-lock-global-modes t)

;; to see the column number
(setq-default column-number-mode t)

;; to see the line number
(setq-default line-number-mode t)

;; tab = 4 spaces
(setq-default tab-width 4)

;; tab in place of multiple spaces when emacs formats a region
(setq-default indent-tabs-mode t)

;; binding DEL for delete
(global-set-key (kbd "DEL") 'backward-delete-char)

;; set backspace delete
(setq-default c-backspace-function 'backward-delete-char)

;; The basic indentation offset
(setq-default c-basic-offset 4)

;; Auto Newline
(setq c-auto-newline t)

;; linux style
(setq-default c-default-style "linux")

;; the tabultation stop points
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
								64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;; auto pair parenthesis...
(electric-pair-mode 1)

;; show tablulation
(setq whitespace-style '(trailing tabs newline tab-mark newline-mark))

;; make characters after column 80 purple
(setq whitespace-style
	  (quote (face trailing tab-mark lines-tail)))
(add-hook 'find-file-hook 'whitespace-mode)

;; backup directory in .emacs.d
(setq backup-directory-alist '(("." . "~/.emacs.d/")))


;;----------------------------------------------------------------------------;;
;;                                  HEADER                                    ;;
;;----------------------------------------------------------------------------;;


(setq user_login (if (getenv "USER")
				(getenv "USER")
				"marvin"))

(while (< (length user_login) 9) (setq user_login (concat user_login " ")))

(setq user_mail (if (getenv "MAIL")
			   (getenv "MAIL")
			 "marvin@42.fr"))

(setq user_mail (concat "<" user_mail ">"))

(while (< (length user_mail) 26) (setq user_mail (concat user_mail " ")))

;; ligne bugger
;;(setq user_filename (file-name-nondirectory (buffer-file-name)))
(setq user_filename (if (buffer-file-name)
						(file-name-nondirectory (buffer-file-name))
					  nil))

(while (< (length user_filename) 41) (setq user_filename (concat user_filename " ")))

(setq user_header
	  (concat
	   "/* ************************************************************************** */\n"
	   "/*                                                                            */\n"
	   "/*                                                        :::      ::::::::   */\n"
	   "/*   " user_filename                         "          :+:      :+:    :+:   */\n"
	   "/*                                                    +:+ +:+         +:+     */\n"
	   "/*   By: " user_login " " user_mail         "       +#+  +:+       +#+        */\n"
	   "/*                                                +#+#+#+#+#+   +#+           */\n"
	   "/*   Created: " (format-time-string "%Y/%m/%d %T") " by "
	   user_login                                    "         #+#    #+#             */\n"
	   "/*   Updated: " (format-time-string "%Y/%m/%d %T") " by "
	   user_login                                    "        ###   ########.fr       */\n"
	   "/*                                                                            */\n"
	   "/* ************************************************************************** */\n"))

(defun user_header_aff ()
  (interactive)
  (insert user_header))

(global-set-key (kbd "C-c C-h") 'user_header_aff)
;;(global-set-key (kbd "C-c C-h") (insert user_header))
