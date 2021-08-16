const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0F3C46", /* black   */
  [1] = "#2193AE", /* red     */
  [2] = "#5F9DA6", /* green   */
  [3] = "#28A6C8", /* yellow  */
  [4] = "#5FB8CC", /* blue    */
  [5] = "#77C4CD", /* magenta */
  [6] = "#C4CEAD", /* cyan    */
  [7] = "#c6dedc", /* white   */

  /* 8 bright colors */
  [8]  = "#8a9b9a",  /* black   */
  [9]  = "#2193AE",  /* red     */
  [10] = "#5F9DA6", /* green   */
  [11] = "#28A6C8", /* yellow  */
  [12] = "#5FB8CC", /* blue    */
  [13] = "#77C4CD", /* magenta */
  [14] = "#C4CEAD", /* cyan    */
  [15] = "#c6dedc", /* white   */

  /* special colors */
  [256] = "#0F3C46", /* background */
  [257] = "#c6dedc", /* foreground */
  [258] = "#c6dedc",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
