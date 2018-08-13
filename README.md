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
