# BUILDLOG

### v0.11.0: Miguel Rodo (2025-05-29 10:07:20)

**Description**

Update for 2025

**Metadata**

- Total time: 
7s
- `projr` profile: 

**`projr` config**

```yaml
directories:
  raw-data:
    path: _raw_data
  cache:
    path: _tmp
  output:
    path: _output
  docs:
    path: docs
build:
  github:
    latest-2025:
      content:
      - raw-data
      - docs
      - output
      structure: latest
    archive-2025:
      content:
      - raw-data
      - docs
      - output

```

**Session info**

```
R version 4.4.1 (2024-06-14)
Platform: x86_64-pc-linux-gnu
Running under: Ubuntu 22.04.4 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3 
LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.20.so;  LAPACK version 3.10.0

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8    LC_PAPER=en_US.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       

time zone: Etc/UTC
tzcode source: system (glibc)

attached base packages:
[1] stats     graphics  grDevices datasets  utils     methods   base     

loaded via a namespace (and not attached):
 [1] vctrs_0.6.5         cli_3.6.5           knitr_1.50          rlang_1.1.6         xfun_0.52           processx_3.8.6     
 [7] renv_1.1.4          cffr_1.2.0          jsonlite_2.0.0      glue_1.8.0          V8_6.0.3            rprojroot_2.0.4    
[13] htmltools_0.5.8.1   quarto_1.4.4        ps_1.9.1            codemeta_0.1.1      rmarkdown_2.29      evaluate_1.0.3     
[19] tibble_3.2.1        fastmap_1.2.0       yaml_2.3.10         lifecycle_1.0.4     projr_0.2.18-6      jsonvalidate_1.5.0 
[25] BiocManager_1.30.25 compiler_4.4.1      fs_1.6.6            Rcpp_1.0.14         pkgconfig_2.0.3     rstudioapi_0.17.1  
[31] later_1.4.2         digest_0.6.37       R6_2.6.1            curl_6.2.3          pillar_1.10.2       magrittr_2.0.3     
[37] tools_4.4.1         desc_1.4.3         
```

----

