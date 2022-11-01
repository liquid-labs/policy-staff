# Secure and Process Google Workspace Accounts

## Purpose and scope

These procedures detail the steps necessary to secure a Google Workspace account and backup and/or transfer the account data and email.

## Procedures

- These procedures are are performed by a <role>Workspace Admin</role>.
- The work ticket should specify:
  - Is it necessary to back up this user's data?
  - Is it necessary to capture the user's email?
- Data backup captures Drive files, contacts, and miscellaneous data captured by Google Takeout.
- Where data or ownership is transferred, contact the terminated resource's manager if recipients are not designated in the work ticket.
- Each procedure notes under what conditions it needs to be performed.

### Locate user and deactivate their account

**For all users.**

Block access to the account by suspending the account.

1. Locate the user in the [Google admin user's console](https://admin.google.com/ac/users).
2. Click 'More options' in the user's row and select 'Suspend user'.
3. In the work ticket, add a comment noting when the user was suspended.

### Clear user data from mobile devices

**For all users.**

Wipe user accounts and log them out of the company account on mobile devices. This is not a guarantee that the user's don't retain data outside of the company's control.

1. As a <role>Workspace Admin</role>, locate the user in the [Google admin user's console](https://admin.google.com/ac/users).
2. Click the user record. and scroll down and find devices. Select each device:
   1. If possible, "wipe accounts" from the device.
   2. Otherwise, "sign user out" of the device.
3. Take a screenshot and prepend '&lt;email&gt;@{{ .COMPANY_EMAIL_DOMAIN }} devices post wipe and sign out' to the title.
4. Select all devices and "delete devices".
5. Take another screenshot prepending '&lt;email&gt;@{{ .COMPANY_EMAIL_DOMAIN }} devices post deletion' and save it in the evidence folder.

### Capture user's Drive files

If **data backup** required.

1. As <role>Workspace Admin</role>, goto to '[Apps -> Google Workspace -> Drive and Docs](https://admin.google.com/ac/appsettings/55656082996)'.
2. Select 'Transfer Ownership'.
3. The 'From user' is the terminated user, the 'To user' is their immediate manager.
4. Take a screenshot and prepend '&lt;email&gt;@{{ .COMPANY_EMAIL_DOMAIN }} Drive files transfer' and save it in the evidence folder.

### Take control of user's account

If **data backup** or **email capture** are required.

1. As a <role>Workspace Admin</role>, open the Workspace user detail.
2. Scroll to and expand the 'Security' section.
2. Replace or add your own email and phone number as recovery email and phone number.
3. Click 'Sign in cookies' and then 'Reset'.
4. Turn off 2-step verification.

### Export user's contacts

If **data backup** required.

 1. As the terminate user, go to [Google Contacts](https://contacts.google.com/) > (left menu) Export. Select vCard for compatibility.
 2. Save the contacts file like:
 ```
 <year>-<month>-<email prefix>-<surname_given name>-contacts.vcf
 e.g.: 2021-07-jsmith-smith_john-contacts.vcf
 ```
 3. Save the file in the archive folder created earlier.
 4. Email the contacts file to the terminate user's manager.
 5. Print out the email and save it in the evidence folder.

### Backup miscellaneous user data

If **data backup** required.

Assuming you [have control of the user's account](#take-control-of-users-account):

1. Open an incognito window and head to [Google Takeout](https://google.com/takeout).
2. Log in as the user.
3. Leave all data sources selected (the default), scroll down and click next.
4. Change format type to 'tgz' and archive size to '50 GB' (the largest).
5. Click start.
6. Make a note to check the user's emails after a few hours to see if the export is complete and to save the resulting files in the drive.
7. Leave the window open and it will give you the option to download the archive if it finishes relatively quickly; you will also use this window later in the process.
8. In the Google Drive shared drive ['Staff->Ex-staff' folder](https://drive.google.com/drive/u/0/folders/19kyCIqr-GrPAWyv1oySWxiRU43XxvtDE), create a folder named like:
  ```
  <year>-<month>-<email prefix>-<surname_given name>
  e.g.: 2021-07-jsmith-smith_john
  ```
  where 'email prefix' is the first part of their company email before the domain.
9. Place the takeout file(s) in this directory and name the takeout files like:
  ```
  <email prefix>-<surname_given name>-google-takeout-backout-<timestamp>-<sequence>.tgz
  e.g.: jsmith-smith_john-google-takeout-backout-20210713T225926Z-001.tgz
  ```
  The timestamp and sequence number are created by Takeout and need not be changed.

### Capture user's email

If **email capture** is required.

Assuming you [have control of the user's account](#take-control-of-users-account):

1. Alert the manager that the user's old emails are incoming. TODO: provide advice for sorting and labeling; have requested feedback from test transferee.
2. Head over to the [Data Migration Service](https://admin.google.com/ac/dms).
3. Click 'Add user'.
4. Input the terminated user's email and click 'Authenticate'. You will need to authenticate with the password you created earlier and it will probably want to text you a security code.
5. Allow the Data Migration service access to the account, and then copy the generated access code.
6. Back in the Data Migration service tab, paste the access code and enter the email address to which you want to send the terminated user's emails.

### Transfer Google Groups

**For all users.**

1. As a <role>Workspace Admin</role>, locate the user record in the admin console and click into the user details.
2. Scroll down to the 'Groups' section. If the user doesn't own any groups, there's nothing more to do.
3. As the terminated user navigate to [Google Groups](https://groups.google.com).
4. For each group and site, select the group settings icon, and choose Membership and email settings, then 'Transfer ownership'.

Reference: [View a user's group membership](https://support.google.com/cloudidentity/answer/167104?hl=en) support page.

### Transfer Google Sites

**For all users.**

1. As the terminated user, navigate to [Google Sites](https://sites.google.com).
2. If there are any sites listed, check if the terminated user is the owner and if so, transfer ownership of the site.

### Delete the user's account

**For all users.**

Once all the transfers have been completed, the user account can be deleted through the Google Workspace users page.

1. As a <role>Workspace Admin</role>,

## References

* [5 steps to securely transfer G Suite data when an employee leaves your company](https://www.techrepublic.com/article/5-steps-to-securely-transfer-g-suite-data-when-an-employee-leaves-your-company/), 2021-07-13

## Version history

Date | Change description | Ticket | Ver. (git) | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------
2021-05-11 | Initial draft. | | 8954b0c | Zane Rockenbaugh &lt;zane@mocapay.com&gt; |
