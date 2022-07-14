# V(D)J T Cell and B Cell Analysis with cellranger vdj

### cellranger vdj pipeline
The [cellranger vdj pipeline](https://support.10xgenomics.com/single-cell-vdj/software/pipelines/latest/using/vdj) can be used to analyze sequencing data produced from Chromium Single Cell 5′ V(D)J libraries. 

```
nohup run_cellranger_vdj.sh  &> out.vdj&
```

### cellranger multi pipeline
If you have single cell gene expression (GEX) libraries and V(D)J libraries from the same sample, the [cellranger multi pipeline](https://support.10xgenomics.com/single-cell-vdj/software/pipelines/latest/using/multi) improves cell calls in the V(D)J dataset by discarding any cells that were not also called in the corresponding 5' gene expression dataset (recommended). 
```
run_cellranger_multi.sh  &> out.multi&
```
