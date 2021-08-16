static const char norm_fg[] = "#c6dedc";
static const char norm_bg[] = "#0F3C46";
static const char norm_border[] = "#8a9b9a";

static const char sel_fg[] = "#c6dedc";
static const char sel_bg[] = "#5F9DA6";
static const char sel_border[] = "#c6dedc";

static const char urg_fg[] = "#c6dedc";
static const char urg_bg[] = "#2193AE";
static const char urg_border[] = "#2193AE";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
