#' @include colour.R
NULL

# Geologic Timescale ===========================================================
#' Geologic Timescale Color Scheme for \pkg{ggplot2}
#'
#' Provides the geologic timescale color scheme.
#' @param ... Arguments passed on to [ggplot2::discrete_scale()].
#' @param lang A [`character`] string specifying the language for the
#'  color names (see details). It must be one of "`en`" (english, the
#'  default) or "`fr`" (french).
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the unit names.
#' @references
#'  \href{https://www.ccgm.org}{Commission for the Geological Map of the World}.
#' @return A [discrete][ggplot2::discrete_scale] scale.
#' @example inst/examples/ex-science-stratigraphy.R
#' @author N. Frerebeau
#' @family themed colour schemes
#' @family qualitative colour schemes
#' @export
#' @rdname scale_stratigraphy
scale_colour_stratigraphy <- function(..., lang = "en", aesthetics = "colour") {
  # Get palette
  color_palette <- colour("stratigraphy", names = TRUE, lang = lang)
  # Build scale
  ggplot2::scale_color_manual(..., values = color_palette(175),
                              aesthetics = aesthetics)
}

#' @export
#' @rdname scale_stratigraphy
scale_color_stratigraphy <- scale_colour_stratigraphy

#' @export
#' @rdname scale_stratigraphy
scale_fill_stratigraphy <- function(..., lang = "en", aesthetics = "fill") {
  # Get palette
  color_palette <- colour("stratigraphy", names = TRUE, lang = lang)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(175),
                             aesthetics = aesthetics)
}

# Land =========================================================================
#' AVHRR Global Land Cover Classification Colour Scheme for \pkg{ggplot2}
#'
#' Provides the AVHRR Global Land Cover classification as modified by
#' Paul Tol (colorblind safe).
#' @param ... Arguments passed on to [ggplot2::discrete_scale()].
#' @param lang A [`character`] string specifying the language for the
#'  color names (see details). It must be one of "`en`" (english, the
#'  default) or "`fr`" (french).
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the soil names.
#' @return A [discrete][ggplot2::discrete_scale] scale.
#' @references
#'  Tol, P. (2018). \emph{Colour Schemes.} SRON. Technical Note No.
#'  SRON/EPS/TN/09-002, issue 3.1.
#'  URL: \url{https://personal.sron.nl/~pault/data/colourschemes.pdf}
#' @example inst/examples/ex-science-land.R
#' @author N. Frerebeau
#' @family themed colour schemes
#' @family qualitative colour schemes
#' @export
#' @rdname scale_land
scale_colour_land <- function(..., lang = "en", aesthetics = "colour") {
  # Get palette
  color_palette <- colour("land", names = TRUE, lang = lang)
  # Build scale
  ggplot2::scale_color_manual(..., values = color_palette(14),
                              aesthetics = aesthetics)
}

#' @export
#' @rdname scale_land
scale_color_land <- scale_colour_land

#' @export
#' @rdname scale_land
scale_fill_land <- function(..., lang = "en", aesthetics = "fill") {
  # Get palette
  color_palette <- colour("land", names = TRUE, lang = lang)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(14),
                             aesthetics = aesthetics)
}

# Soil =========================================================================
#' FAO Soil Reference Groups Color Scheme for \pkg{ggplot2}
#'
#' Provides the FAO Soil Reference Groups colour scheme.
#' @param ... Arguments passed on to [ggplot2::discrete_scale()].
#' @param lang A [`character`] string specifying the language for the
#'  color names (see details). It must be one of "`en`" (english, the
#'  default) or "`fr`" (french).
#' @param aesthetics A [`character`] string or vector of character
#'  strings listing the name(s) of the aesthetic(s) that this scale works with.
#' @details Values will be matched based on the soil names.
#' @references
#'  Jones, A., Montanarella, L. & Jones, R. (Ed.) (2005). *Soil atlas of
#'  Europe*. Luxembourg: European Commission, Office for Official Publications
#'  of the European Communities. 128 pp. ISBN: 92-894-8120-X.
#' @return A [discrete][ggplot2::discrete_scale] scale.
#' @example inst/examples/ex-science-soil.R
#' @author N. Frerebeau
#' @family themed colour schemes
#' @family qualitative colour schemes
#' @export
#' @rdname scale_soil
scale_colour_soil <- function(..., lang = "en", aesthetics = "colour") {
  # Get palette
  color_palette <- colour("soil", names = TRUE, lang = lang)
  # Build scale
  ggplot2::scale_color_manual(..., values = color_palette(24),
                              aesthetics = aesthetics)
}

#' @export
#' @rdname scale_soil
scale_color_soil <- scale_colour_soil

#' @export
#' @rdname scale_soil
scale_fill_soil <- function(..., lang = "en", aesthetics = "fill") {
  # Get palette
  color_palette <- colour("soil", names = TRUE, lang = lang)
  # Build scale
  ggplot2::scale_fill_manual(..., values = color_palette(24),
                             aesthetics = aesthetics)
}
