# min-root

* parent pom for `min` projects.
* determines:
    * plugin versions
    * distribution management (push to reposilite)

## CI/CD

* add this to `settings.xml`

```xml

<servers>
	<server>
		<id>repo-releases</id>
		<username>foo</username>
		<password>bar</password>
	</server>
	<server>
		<id>repo-snapshots</id>
		<username>foo</username>
		<password>bar</password>
	</server>
</servers>
```
