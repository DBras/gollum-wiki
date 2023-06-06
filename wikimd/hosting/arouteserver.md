---
title: ARouteServer
---

Program for easily generating a configuration for a route server.

# Test environment

ARouteServer ships with an environment for automated testing of configurations.

## Specific tests

Tested scenarios:

```bash
communities
rpki
default
global
```

Of these, only `global` did not work. It spit out some error concerning exaBGP.

## Running a test

Tests are run with the following commands:

```bash
cd ~/arouteserver
pipenv shell
sudo pytest -vs tests/live_tests/scenarios/<test name> <test name>_tests
cat <test name>_tests --language=python
```

The latter is for seeing the output. Since this contains python errors, it is
read with that language in mind.
