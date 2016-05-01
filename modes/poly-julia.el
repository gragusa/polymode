(require 'polymode)

(defcustom pm-poly/julia
  (pm-polymode-one "julia"
                   :hostmode 'pm-host/julia
                   :innermode 'pm-inner/fundamental)
  "julia root polymode. Not intended to be used directly."
  :group 'polymodes
  :type 'object)

(defcustom pm-inner/markdown+julia
  (clone pm-inner/markdown
         :mode 'ess-julia-mode)
  "Markdown for julia"
  :group 'innermodes
  :type 'object)

;; MARKDOWN
(require 'poly-markdown)
;;;###autoload (autoload 'poly-markdown+r-mode "poly-R")
(define-polymode poly-markdown+r-mode pm-poly/markdown :lighter " PM-jmd")
