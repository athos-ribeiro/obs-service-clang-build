## What is in this repository?

This is an [Open Build Service (OBS) Source
Service](https://openbuildservice.org/help/manuals/obs-user-guide/cha.obs.source_service.html)
to allow clang builds for Debian packages.

An OBS instance using this package to rebuild Debian Unstable packages against
clang is available at [irill8.siege.inria.fr](https://irill8.siege.inria.fr).

## How to use this package?

Since this Source Service is supposed to be used in `buildtime` mode, it must be available
to the OBS project as a package (just build this package in your OBS project and make sure
the `Use for Build Flag` is enabled).

Then, you must activate the source service for the target package. To do so,
read [OBS Source Service
documentation](https://openbuildservice.org/help/manuals/obs-user-guide/cha.obs.source_service.html).
In short, you need to add a `_service` file to the target package working
directory with the following content:

```
<services>
  <service name="clang_build" mode="buildtime" />
</services>
```

and trigger the target package build.

Check the build log, searching for `Running build time source services...` to
make sure your source service was triggered.

## Additional resources

- https://github.com/athos-ribeiro/salt-obs
- https://github.com/opencollab/llvm-slave-salt
- https://github.com/athos-ribeiro/obs-trigger-sid-builds

# Licence

obs-service-clang-build
Copyright (C) 2018  Athos Ribeiro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
