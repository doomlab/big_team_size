# Team Science: An Examination of Factors Associated with Citation Metrics

[![DOI](https://zenodo.org/badge/DOI/ZENODO_DOI_PLACEHOLDER.svg)](https://doi.org/ZENODO_DOI_PLACEHOLDER)

Kelly Cuccolo, Jordan Wagge, John E. Edlund, and Erin M. Buchanan

This repository contains the preregistration materials, analysis code, and
manuscript source for a study of how co-authorship team size and team
composition (gender, *h*-index, and the number of institutions and countries)
are associated with citation metrics across disciplines.

## Data

The analyses used Scopus metadata accessed through Elsevier's International
Center for the Study of Research (ICSR) Lab (Databricks platform, snapshot
v008, 9 May 2023). **The full dataset is not included in this repository**; it
is available only through ICSR access. Elsevier has stated that it will
guarantee access to researchers who wish to reproduce or extend this work.
This repository includes the analysis code (run in Databricks with *pyspark*)
and the aggregated model and descriptive output used to build the manuscript.

## Folder structure

```
big_team_size/
├── 01_prereg/              Original preregistration (July 2022)
├── 02_prereg_update/       Updated preregistration (July 2023) after deviations
├── 03_manuscript/          Manuscript and final analysis output
│   ├── manuscript.Rmd      Manuscript source (papaja); knit to produce the paper
│   ├── appendix_a.Rmd      Appendix A (child document of manuscript.Rmd)
│   ├── references.bib      References
│   ├── r-references.bib    R package references
│   ├── data/               Aggregated model and descriptive output (CSV)
│   ├── figures/            Figures used in the manuscript
│   ├── includes/           Citation style files
│   └── scopus/             Final Databricks analysis notebooks (.ipynb and .html)
├── CITATION.cff            Citation metadata
├── LICENSE                 Apache License 2.0
├── r-references.bib        R package references
└── big_team_size.Rproj     RStudio project file
```

### `01_prereg/` and `02_prereg_update/`

Each contains the analysis plan (`analysis_plan.Rmd` / `.docx`), the
preregistration text (`prereg_plan.docx`), the output spreadsheets
(`descriptives.xlsx`, `model.xlsx`), and the Databricks notebooks
(`.ipynb`, `.html`, `.dbc`) run on a 1% development subset of the data
(the subset ICSR allowed us to use before the full analysis). The preregistration
is at <https://osf.io/j63fd>, and includes the update describing deviations
from the original plan.

### `03_manuscript/`

| Path | Contents |
| --- | --- |
| `manuscript.Rmd` | Manuscript source. Reads the CSV files in `data/` and builds the figures and statistics inline. |
| `appendix_a.Rmd` | Appendix A: data screening and full coefficient tables. |
| `data/descriptives_output_df_200723_part1.csv` | Mean, SD, sample size, median, and IQR by subject area (RQ1a and RQ1b). |
| `data/model_output_200723_part1.csv` | Model coefficients for RQ1a and RQ1b. |
| `data/model_output_310723_part2.csv` | Model coefficients for RQ2 (author variables). |
| `figures/` | Figures 1 to 6 and the data screening figure. |
| `scopus/` | The final Databricks notebooks: `200723_part1` (RQ1) and `310723_part2` (RQ2). `200723_part2` is an earlier RQ2 run that ended in an error and was re-run as `310723_part2`. |

## Reproducing the analyses

1. **Re-run the models (requires ICSR access).** Import the notebooks in
   `03_manuscript/scopus/` into the ICSR Databricks workspace. The notebooks
   use the 25% random sample (fixed seed) of journal articles published from
   1970 onward.
2. **Rebuild the manuscript (no ICSR access needed).** Open
   `big_team_size.Rproj` in RStudio and knit `03_manuscript/manuscript.Rmd`
   with the *papaja* package. The CSV output in `03_manuscript/data/` is all
   that is needed.

## Related materials

- Preregistration: <https://osf.io/j63fd>
- OSF project (analysis code and output): <https://osf.io/g4qnp/>

## Citation

If you use this repository, please cite it using the Zenodo record
(<https://doi.org/ZENODO_DOI_PLACEHOLDER>) or the metadata in
[`CITATION.cff`](CITATION.cff).

## License

Apache License 2.0. See [`LICENSE`](LICENSE). The license covers the code and
text in this repository, not the Scopus data, which remain subject to
Elsevier's terms.
