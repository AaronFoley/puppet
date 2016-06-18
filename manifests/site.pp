# Use Hiera to define the role of a server
$role = lookup('role', String, 'first')
include $role