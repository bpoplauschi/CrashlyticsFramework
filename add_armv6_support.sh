#!/bin/bash
set -e

cd "$(dirname -- "$0")"

# v.2.2.0 is last version with armv6 support
git show 2.2.0:Crashlytics.framework/Versions/A/Crashlytics >| /tmp/$$.Crashlytics.tmp
lipo /tmp/$$.Crashlytics.tmp -extract armv6 -output /tmp/$$.Crashlytics.armv6.tmp
lipo Crashlytics.framework/Crashlytics /tmp/$$.Crashlytics.armv6.tmp -create -output /tmp/$$.Crashlytics.new.tmp

mv /tmp/$$.Crashlytics.new.tmp Crashlytics.fixed.tmp
rm /tmp/$$.Crashlytics.*

mv Crashlytics.fixed.tmp "$(perl -e 'use Cwd "abs_path";print abs_path(shift)."\n"' Crashlytics.framework/Crashlytics)"

echo 'Crashlytics.framework updated with armv6 support from v.2.2.0'
