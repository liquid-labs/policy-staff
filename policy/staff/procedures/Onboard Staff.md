# Onboard Staff

## Purpose and scope

TODO

## Procedures

### Create company account

Requires <role>Operations Admin</role>.

1. Navigate to <kbd><samp>Directory</samp> | <samp>Users</samp></kbd>.
2. Click <kbd><samp>Add new user</samp></kbd> at the top of the user table.
3. Fill in the user's first and last name. Assign user email.
   * If the user's first name is not yet taken, use the first name.
   * Otherwise, use `<first name>.<last name>@{{ .COMPANY_EMAIL_DOMAIN }}`, if available.
   * Otherwise, use `<first name>.<middle initial>.<last name>@{{ .COMPANY_EMAIL_DOMAIN }}`, if available.
   * Otherwise, contact your manager and request guidance.
4. Use the new user's secondary email from the Task description. Contact your manager if the secondary email is missing.
5. From the user detail page, expand the <kbd><samp>Licenses</samp></kbd> section. You may need to scroll down.
6. Select <kbd><samp>Google Workspace Enterprise Plus</samp></kbd>. If there are licenses available, toggle the license on.
7. If no licenses are available:
   1. Click <kbd><samp>Billing</samp></kbd>. This will take you to the subscriptions section.
   2. Click <kbd><samp>Google Workspace Enterprise Plus</samp><kbd>.
   3. Under 'Licenses', click <kbd><samp>Purchase more</samp><kbd>.
   4. Check that you are adding '1' new user and click <kbd><samp>Continue</samp><kbd> then <kbd><samp>Purchase</samp></kbd>.
   5. Navigate back to the user profile through <kbd><samp>Directory</samp> | <samp>Users</samp> | <samp>User entry</samp></kbd>. You can now assign the Workspace license.
8. Click <kbd><samp>Save</samp></kbd>.
9. [Assign user to Google Workspace groups]({{ .staff.procedures.GENERAL_USER_MANAGEMENT }}#assigning-google-workspace-group-members) as indicated by the Roles and Access Matrix. (TODO: link)
10. Create any additional accounts as inidcated by the Roles and Access Matrix. (TODO: link)
