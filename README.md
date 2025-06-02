# Helm Charts to deploy virtual clusters

## Why?

The UNI VirtualKubernetesCluster controller creates virtual clusters by deploying a chart.
The chart is expected to have vcluster, but virtual clusters can have resources other than
those representing the vCluster; for instance, network policies, admission policies,
external secrets.

As of https://github.com/nscaledev/uni-kubernetes/pull/248, the virtual cluster controller
will put vcluster-specific values under `vcluster:`, so this chart has vcluster as a subchart.

## Reference

| Path | Explanation |
|------|-------------|
| .vcluster | vCluster chart values per https://github.com/loft-sh/vcluster/tree/main/chart |
