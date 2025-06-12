node default {
  $role = lookup('roles::default_role')
  include $role
}
