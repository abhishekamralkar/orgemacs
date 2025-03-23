;;; ligature-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:



;;; Generated autoloads from ligature.el

(autoload 'ligature-set-ligatures "ligature" "\
Replace LIGATURES in MODES.

Converts a list of LIGATURES, where each element is either a cons
cell of `(STR-CHAR . REGEXP)' or a string to ligate, for all
modes in MODES.  As there is no easy way of computing which
ligatures were already defined, this function will replace any
existing ligature definitions in `ligature-composition-table'
with LIGATURES for MODES.


Some ligatures are variable-length, such as arrows and borders,
and need a regular expression to accurately represent the range
of characters needed to ligate them.  In that case, you must use a
cons cell of `(STR-CHAR . REGEXP)' where `STR-CHR' is the first
character in the ligature and `REGEXP' is a regular expression
that matches the _rest_ of the ligature range.

For examples, see the commentary in `ligature.el'.

(fn MODES LIGATURES)")
(autoload 'ligature-generate-ligatures "ligature" "\
Ligate the current buffer using its major mode to determine ligature set.

The ligature generator traverses `ligature-composition-table' and
applies every ligature definition from every mode that matches
either t (indicating that a ligature mapping always applies);
or a major mode or list of major mode symbols that are
`derived-mode-p' of the current buffer's major mode.

The changes are then made buffer-local." t)
(autoload 'ligature-mode "ligature" "\
Enables typographic ligatures.

This is a minor mode.  If called interactively, toggle the `Ligature
mode' mode.  If the prefix argument is positive, enable the mode, and if
it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the mode
if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate the variable `ligature-mode'.

The mode's hook is called both when the mode is enabled and when it is
disabled.

(fn &optional ARG)" t)
(put 'global-ligature-mode 'globalized-minor-mode t)
(defvar global-ligature-mode nil "\
Non-nil if Global Ligature mode is enabled.
See the `global-ligature-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-ligature-mode'.")
(custom-autoload 'global-ligature-mode "ligature" nil)
(autoload 'global-ligature-mode "ligature" "\
Toggle Ligature mode in all buffers.
With prefix ARG, enable Global Ligature mode if ARG is positive;
otherwise, disable it.

If called from Lisp, toggle the mode if ARG is `toggle'.
Enable the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

Ligature mode is enabled in all buffers where `ligature-mode-turn-on'
would do it.

See `ligature-mode' for more information on Ligature mode.

(fn &optional ARG)" t)
(register-definition-prefixes "ligature" '("ligature-"))

;;; End of scraped data

(provide 'ligature-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; ligature-autoloads.el ends here
