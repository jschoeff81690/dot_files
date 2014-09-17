#!/bin/sh
su - A -c "/usr/src/bin/tester/test &"
#su - A -c "/usr/src/bin/tester/test &"

su - B -c "/usr/src/bin/tester/test &"
#su - B -c "/usr/src/bin/tester/test &"

su - C -c "/usr/src/bin/tester/test &"
#su - C -c "/usr/src/bin/tester/test &"

