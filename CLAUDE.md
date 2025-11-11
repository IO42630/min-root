# min-root

## Overview

Maven parent POM defining plugin versions and distribution management for the com.olexyn artifact family.

## Purpose

Central parent POM that:
- Defines standard Maven plugin versions for child projects
- Configures Java 25 as target version
- Establishes distribution repositories (releases + snapshots)
- Provides pluginManagement for consistent tooling across modules

## Key Configurations

### Java Version
- **Target**: Java 25 (property: `xx.java.version`)
- **Encoding**: UTF-8

### Plugin Management

All plugins managed at latest stable versions (as of 2025-11):

| Plugin                            | Version | Purpose                                 |
|-----------------------------------|---------|-----------------------------------------|
| maven-clean-plugin                | 3.5.0   | Remove build artifacts                  |
| maven-resources-plugin            | 3.3.1   | Copy project resources                  |
| maven-compiler-plugin             | 3.14.1  | Compile Java sources                    |
| maven-surefire-plugin             | 3.5.4   | Run unit tests                          |
| maven-jar-plugin                  | 3.4.2   | Build JAR artifacts                     |
| maven-war-plugin                  | 3.5.0   | Build WAR artifacts                     |
| maven-install-plugin              | 3.1.4   | Install to local repository             |
| maven-deploy-plugin               | 3.1.4   | Deploy to remote repository             |
| maven-site-plugin                 | 3.21.0  | Generate project documentation          |
| maven-project-info-reports-plugin | 3.9.0   | Generate project info reports           |
| maven-dependency-plugin           | 3.9.0   | Manage dependencies (sources + resolve) |
| exec-maven-plugin                 | 3.6.2   | Execute system/Java programs            |

### Distribution Management

- **Releases**: https://repo.plexworlds.com/releases
- **Snapshots**: https://repo.plexworlds.com/snapshots

## Usage

Child projects should reference this parent POM:

```xml
<parent>
    <groupId>com.olexyn</groupId>
    <artifactId>min-root</artifactId>
    <version>25.0.0</version>
</parent>
```

Child projects inherit:
- Plugin versions (no need to specify in child POMs)
- Java 25 compilation settings
- Distribution management configuration
- UTF-8 encoding

## Maintenance

### Updating Plugin Versions

Check Maven Central for latest versions:
- Search: https://central.sonatype.com
- Prefer stable releases over beta versions
- Update all plugins simultaneously for consistency
- Verify child projects build successfully after updates

### Version Strategy

- Parent POM version follows year-based scheme (25.0.0 = year 2025)
- Only use stable plugin versions (avoid beta unless required)
- Never downgrade plugin versions
