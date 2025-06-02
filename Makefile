
.PHONY: test
test:
	set -e; \
	for chart in $(CHARTS) $(USER_CHARTS); do \
		helm dependency update charts/$${chart}; \
		helm lint --strict charts/$${chart}; \
		helm template charts/$${chart} > /dev/null; \
	done
