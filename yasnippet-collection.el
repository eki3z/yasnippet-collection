;;; yasnippet-collection.el --- Collection of yasnippet -*- lexical-binding: t -*-

;; Copyright (C) 2021 liuyinz

;; Author: liuyinz <liuyinz95@gmail.com>
;; Maintainer: liuyinz <liuyinz95@gmail.com>
;; Created: 2021-10-19 18:16:27
;; Version: 0.1.0
;; Package-Requires: ((emacs "27") (yasnippet "0.8.0"))
;; Homepage: https://github.com/liuyinz/yasnippet-collection

;; This file is not a part of GNU Emacsl.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'yasnippet)

(defconst yasnippet-collection-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    ;; Copied from ‘f-this-file’ from f.el.
    (cond
     (load-in-progress load-file-name)
     ((and (boundp 'byte-compile-current-file) byte-compile-current-file)
      byte-compile-current-file)
     (:else (buffer-file-name))))))

;;;###autoload
(defun yasnippet-collection-initialize ()
  "Load the `yasnippet-collection' snippets directory."
  (add-to-list 'yas-snippet-dirs 'yasnippet-collection-dir t)
  (yas-load-directory yasnippet-collection-dir t))

(provide 'yasnippet-collection)
;;; yasnippet-collection.el ends here
