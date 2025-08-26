CHARTS := virtualcluster

.PHONY: test docs

test:
	set -e; \
	for chart in $(CHARTS); do \
		helm dependency update charts/$${chart}; \
		helm lint --strict charts/$${chart}; \
		helm template charts/$${chart} > /dev/null; \
	done

docs:
	@command -v helm-docs >/dev/null 2>&1 || { echo >&2 "helm-docs is required but not installed. Install it with: go install github.com/norwoodj/helm-docs/cmd/helm-docs@latest"; exit 1; }
	helm-docs charts/
