// Put this file on site-packages/notebook/static/components/MathJax/config/local.js

MathJax.Hub.Register.StartupHook("TeX Jax Ready",function () {
  let tex = MathJax.InputJax.TeX;

  // unit
  tex.Macro("si", "\\,[\\mathrm{#1}]\\,", 1);
  
  // alias
  tex.Macro("op", "\\operatorname{#1}", 1);
  tex.Macro("op*", "\\operatorname*{#1}", 1);
  tex.Macro("bm", "\\boldsymbol{#1}", 1);
 
  // diff
  tex.Macro("d", "\\,\\mathrm{d}\\!");
  tex.Macro("diff", "\\frac{\\d #1}{\\d #2}", 2);
  tex.Macro("pdiff", "\\frac{\\partial #1}{\\partial #2}", 2);
});

MathJax.Ajax.loadComplete("[MathJax]/config/local.js");

