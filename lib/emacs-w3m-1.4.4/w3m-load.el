;;; w3m-load.el --- automatically extracted autoload
;;
;; This file should be generated by make in emacs-w3m source directory.
;;
;;; Code:

(provide 'w3m-load)

;;;### (autoloads (w3m-region w3m-find-file w3m-browse-url w3m w3m-gohome
;;;;;;  w3m-goto-url-new-session w3m-goto-url w3m-download w3m-retrieve)
;;;;;;  "w3m" "w3m.el" (16963 18032))
;;; Generated autoloads from w3m.el

(autoload (quote w3m-retrieve) "w3m" "\
Retrieve web contents pointed to by URL.
It will put the retrieved contents into the current buffer.

If HANDLER is nil, this function will retrieve web contents, return
the content type of the retrieved data, and then come to an end.  This
behavior is what is called a synchronous operation.  You have to
specify HANDLER in order to make this function show its real ability,
which is called an asynchronous operation.

If HANDLER is a function, this function will come to an end in no time.
In this case, contents will be retrieved by the asynchronous process
after a while.  And after finishing retrieving contents successfully,
HANDLER will be called on the buffer where this function starts.  The
content type of the retrieved data will be passed to HANDLER as a
string argument.

NO-DECODE specifies whether this function should not decode contents.
NO-CACHE specifies whether this function should not use cached contents.
POST-DATA and REFERER will be sent to the web server with a request." nil nil)

(autoload (quote w3m-download) "w3m" nil t nil)

(autoload (quote w3m-goto-url) "w3m" "\
Visit World Wide Web pages.  This is the primitive function of `w3m'.
If the second argument RELOAD is non-nil, reload a content of URL.
Except that if it is 'redisplay, re-display the page without reloading.
The third argument CHARSET specifies a charset to be used for decoding
a content.
The fourth argument POST-DATA should be a string or a cons cell.  If
it is a string, it makes this function request a body as if the
content-type is \"x-www-form-urlencoded\".  If it is a cons cell, the
car of a cell is used as the content-type and the cdr of a cell is
used as the body.
If the fifth argument REFERER is specified, it is used for a Referer:
field for this request.
The remaining HANDLER and ELEMENT[1] are for the internal operations
of emacs-w3m.
You can also use \"quicksearch\" url schemes such as \"gg:emacs\" which
would search for the term \"emacs\" with the Google search engine.  See
the `w3m-search' function and the variable `w3m-uri-replace-alist'.

[1] A note for the developers: ELEMENT is a history element which has
already been registered in the `w3m-history-flat' variable.  It is
corresponding to URL to be retrieved at this time, not for the url of
the current page." t nil)

(autoload (quote w3m-goto-url-new-session) "w3m" "\
Visit World Wide Web pages in a new session.
If you invoke this command in the emacs-w3m buffer, the new session
will be created by copying the current session.  Otherwise, the new
session will start afresh." t nil)

(autoload (quote w3m-gohome) "w3m" "\
Go to the Home page." t nil)

(autoload (quote w3m) "w3m" "\
Visit World Wide Web pages using the external w3m command.

When you invoke this command interactively for the first time, it will
visit a page which is pointed to by a string like url around the
cursor position or the home page specified by the `w3m-home-page'
variable, but you will be prompted for a URL if `w3m-quick-start' is
nil (default t) or `w3m-home-page' is nil.

The variables `w3m-pop-up-windows' and `w3m-pop-up-frames' control
whether this command should pop to a window or a frame up for the
session.

When emacs-w3m sessions have already been opened, this command will
pop to the existing window or frame up, but if `w3m-quick-start' is
nil, (default t), you will be prompted for a URL (which defaults to
`popup' meaning to pop to an existing emacs-w3m buffer up).

In addition, if the prefix argument is given or you enter the empty
string for the prompt, it will visit the home page specified by the
`w3m-home-page' variable or the \"about:\" page.

You can also run this command in the batch mode as follows:

  emacs -f w3m http://emacs-w3m.namazu.org/ &

In that case, or if this command is called non-interactively, the
variables `w3m-pop-up-windows' and `w3m-pop-up-frames' will be ignored
\(treated as nil) and it will run emacs-w3m at the current (or the
initial) window.

If the optional NEW-SESSION is non-nil, this function makes a new
emacs-w3m buffer.  Besides that, it also makes a new emacs-w3m buffer
if `w3m-make-new-session' is non-nil and a user specifies a url string.

The optional INTERACTIVE-P is for the internal use; it is mainly used
to check whether Emacs 22 or later calls this function as an
interactive command in the batch mode." t nil)

(autoload (quote w3m-browse-url) "w3m" "\
Ask emacs-w3m to browse URL.
NEW-SESSION specifies whether to create a new emacs-w3m session.  URL
defaults to the string looking like a url around the cursor position.
Pop to a window or a frame up according to `w3m-pop-up-windows' and
`w3m-pop-up-frames'." t nil)

(autoload (quote w3m-find-file) "w3m" "\
Function used to open FILE whose name is expressed in ordinary format.
The file name will be converted into the file: scheme." t nil)

(autoload (quote w3m-region) "w3m" "\
Render the region of the current buffer between START and END.
URL specifies the address where the contents come from.  It can be
omitted or nil when the address is not identified.  CHARSET is used
for decoding the contents.  If it is nil, this function attempts to
parse the meta tag to extract the charset." t nil)

;;;***

;;;### (autoloads (w3m-antenna w3m-about-antenna) "w3m-antenna" "w3m-antenna.el"
;;;;;;  (16959 49848))
;;; Generated autoloads from w3m-antenna.el

(autoload (quote w3m-about-antenna) "w3m-antenna" nil nil nil)

(autoload (quote w3m-antenna) "w3m-antenna" "\
Report changes of WEB sites, which is specified in `w3m-antenna-sites'." t nil)

;;;***

;;;### (autoloads (w3m-about-bookmark w3m-bookmark-view w3m-bookmark-add-current-url-group
;;;;;;  w3m-bookmark-add-current-url w3m-bookmark-add-this-url) "w3m-bookmark"
;;;;;;  "w3m-bookmark.el" (16326 54649))
;;; Generated autoloads from w3m-bookmark.el

(autoload (quote w3m-bookmark-add-this-url) "w3m-bookmark" "\
Add link under cursor to bookmark." t nil)

(autoload (quote w3m-bookmark-add-current-url) "w3m-bookmark" "\
Add link of current page to bookmark.
With prefix, ask new url to add instead of current page." t nil)

(autoload (quote w3m-bookmark-add-current-url-group) "w3m-bookmark" "\
Add link of the group of current urls to the bookmark." t nil)

(autoload (quote w3m-bookmark-view) "w3m-bookmark" nil t nil)

(autoload (quote w3m-about-bookmark) "w3m-bookmark" nil nil nil)

;;;***

;;;### (autoloads (w3m-about-cookie w3m-cookie w3m-cookie-get w3m-cookie-set
;;;;;;  w3m-cookie-shutdown) "w3m-cookie" "w3m-cookie.el" (16336
;;;;;;  11058))
;;; Generated autoloads from w3m-cookie.el

(autoload (quote w3m-cookie-shutdown) "w3m-cookie" "\
Save cookies." t nil)

(autoload (quote w3m-cookie-set) "w3m-cookie" "\
Register cookies which correspond to URL.
BEG and END should be an HTTP response header region on current buffer." nil nil)

(autoload (quote w3m-cookie-get) "w3m-cookie" "\
Get a cookie field string which corresponds to the URL." nil nil)

(autoload (quote w3m-cookie) "w3m-cookie" "\
Display cookies and enable you to manage them." t nil)

(autoload (quote w3m-about-cookie) "w3m-cookie" "\
Make the html contents to display and to enable you to manage cookies." nil nil)

;;;***

;;;### (autoloads (w3m-dtree w3m-about-dtree) "w3m-dtree" "w3m-dtree.el"
;;;;;;  (16322 61631))
;;; Generated autoloads from w3m-dtree.el

(autoload (quote w3m-about-dtree) "w3m-dtree" nil nil nil)

(autoload (quote w3m-dtree) "w3m-dtree" "\
Display directory tree on local file system.
If called with 'prefix argument', display all directorys and files." t nil)

;;;***

;;;### (autoloads (w3m-filter) "w3m-filter" "w3m-filter.el" (16913
;;;;;;  51516))
;;; Generated autoloads from w3m-filter.el

(autoload (quote w3m-filter) "w3m-filter" "\
Apply filtering rule of URL against a content in this buffer." nil nil)

;;;***

;;;### (autoloads (w3m-fontify-forms) "w3m-form" "w3m-form.el" (16953
;;;;;;  9284))
;;; Generated autoloads from w3m-form.el

(autoload (quote w3m-fontify-forms) "w3m-form" "\
Process half-dumped data and fontify forms in this buffer." nil nil)

;;;***

;;;### (autoloads (w3m-link-numbering-mode) "w3m-lnum" "w3m-lnum.el"
;;;;;;  (16963 15037))
;;; Generated autoloads from w3m-lnum.el

(autoload (quote w3m-link-numbering-mode) "w3m-lnum" "\
Minor mode to enable operations using link numbers." t nil)

;;;***

;;;### (autoloads (w3m-namazu w3m-about-namazu) "w3m-namazu" "w3m-namazu.el"
;;;;;;  (16913 51516))
;;; Generated autoloads from w3m-namazu.el

(autoload (quote w3m-about-namazu) "w3m-namazu" nil nil nil)

(autoload (quote w3m-namazu) "w3m-namazu" "\
Search indexed files with Namazu." t nil)

;;;***

;;;### (autoloads (w3m-perldoc w3m-about-perldoc) "w3m-perldoc" "w3m-perldoc.el"
;;;;;;  (16742 32814))
;;; Generated autoloads from w3m-perldoc.el

(autoload (quote w3m-about-perldoc) "w3m-perldoc" nil nil nil)

(autoload (quote w3m-perldoc) "w3m-perldoc" "\
View Perl documents." t nil)

;;;***

;;;### (autoloads (w3m-search-uri-replace w3m-search) "w3m-search"
;;;;;;  "w3m-search.el" (16735 52628))
;;; Generated autoloads from w3m-search.el

(autoload (quote w3m-search) "w3m-search" "\
Search QUERY using SEARCH-ENGINE.
When called interactively with a prefix argument, you can choose one of
the search engines defined in `w3m-search-engine-alist'.  Otherwise use
`w3m-search-default-engine'.
If Transient Mark mode, use the region as an initial string of query
and deactivate the mark." t nil)

(autoload (quote w3m-search-uri-replace) "w3m-search" "\
Generate query string for ENGINE from URI matched by last search." nil nil)

;;;***

;;;### (autoloads (w3m-replace-symbol) "w3m-symbol" "w3m-symbol.el"
;;;;;;  (16959 50004))
;;; Generated autoloads from w3m-symbol.el

(autoload (quote w3m-replace-symbol) "w3m-symbol" nil nil nil)

;;;***

;;;### (autoloads (w3m-about-weather w3m-weather) "w3m-weather" "w3m-weather.el"
;;;;;;  (16618 4039))
;;; Generated autoloads from w3m-weather.el

(autoload (quote w3m-weather) "w3m-weather" "\
Display weather report." t nil)

(autoload (quote w3m-about-weather) "w3m-weather" nil nil nil)

;;;***

;;; w3m-load.el ends here
