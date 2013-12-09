# Class: audit
#
# This module manages audit related actions
#
# Parameters:
#  file = file or directory that should be audited
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#  audit{ file='/etc/passwd' }
#
class audit (
  $file = false,
  $audit = 'all')
{
  # Check if file is defined and add full auditing
  if $file {
    file { $file:
      audit => all,
    }
  }
}
