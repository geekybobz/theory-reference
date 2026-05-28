#!/usr/bin/env python3
"""
figure_template.py -- theory-reference skill
Starter for generating semantic figures to import into LaTeX.

Output modes
  .pgf  (default) -- LaTeX renders figure text in the document font
  .pdf  (--pdf)   -- simpler, no pdflatex dependency at generation time

Import in LaTeX
  .pgf:  \\input{figures/fig_example.pgf}
  .pdf:  \\includegraphics{figures/fig_example}   (no extension needed)

Usage
  python scripts/figure_template.py            # -> figures/fig_example.pgf
  python scripts/figure_template.py --pdf      # -> figures/fig_example.pdf
  python scripts/figure_template.py --out my_fig --pdf
"""

import argparse
import pathlib

OUTPUT_DIR = pathlib.Path("figures")


def setup_pgf():
    import matplotlib
    matplotlib.use("pgf")
    import matplotlib.pyplot as plt
    plt.rcParams.update({
        "pgf.texsystem":  "pdflatex",
        "font.family":    "serif",
        "text.usetex":    True,
        "pgf.rcfonts":    False,
        "figure.figsize": (3.5, 2.5),
    })
    return plt


def setup_pdf():
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    plt.rcParams.update({
        "font.family":    "serif",
        "figure.figsize": (3.5, 2.5),
    })
    return plt


def draw(ax):
    """Replace with the actual figure content."""
    import numpy as np
    x = np.linspace(0, 2 * 3.14159, 200)
    ax.plot(x, __import__("numpy").sin(x), lw=1.2)
    ax.set_xlabel(r"$x$")
    ax.set_ylabel(r"$f(x)$")
    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--pdf", action="store_true", help="output PDF instead of PGF")
    parser.add_argument("--out", default="fig_example", help="output filename stem")
    args = parser.parse_args()

    plt = setup_pdf() if args.pdf else setup_pgf()

    OUTPUT_DIR.mkdir(exist_ok=True)
    fig, ax = plt.subplots()
    draw(ax)
    fig.tight_layout(pad=0.3)

    ext = ".pdf" if args.pdf else ".pgf"
    out = OUTPUT_DIR / f"{args.out}{ext}"
    fig.savefig(out, bbox_inches="tight")
    plt.close(fig)
    print(f"Saved: {out}")


if __name__ == "__main__":
    main()
