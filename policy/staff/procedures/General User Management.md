# General User Management

## Purpose and scope

These procedures deal with the management of general user account such as company email, password management,

## Procedures

### Assigning Google Workspace group members

Requires <role>Operations Admin</role>.

1. Navigate to <kbd><samp>Directory</samp> | <samp>Groups</samp></kbd>.
2. Select the desired group from the list.
3. Add or remove members as indicated.

Note, all policy mandated groups are managed by <role>Operations Admins</role> and therefore have neither 'Owner' nor 'Manager' members. All policy mandated group members should have the 'Member' role.

### Add Atlassian/Jira users

1. Navigate to the [Atlassian Admin portal]({{ .ATLASSIAN_ADMIN_PORTAL_URL }}).
2. Click <kbd><samp>Invite Users</samp></kbd>.
3. Enter the user's email.
4. Assign the user's role as indicated or leave as 'Basic' if none specified.
5. Uncheck the 'Jira Service Management' product access if present. (TODO: Unclear whether we use that product or not.)
6. Ensure the 'Jira Software' product access option is checked.
7. Click <kbd><samp>Invite 1 user</samp></kbd>.

Note, for the most part Jira projects are 'open' access so there is no need to configure further access. It is up to the project manager to grant the user access via project settings.
