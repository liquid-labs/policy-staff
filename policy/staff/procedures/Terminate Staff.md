# Terminate Staff

## Purpose and scope

These procedures dealing with terminating a staff member who no longer works for or with the Company. These procedures apply to both staff and employees.

## Procedures

### Termination and collection of physical Company assets

This is performed by a <role>Human Resources Agent</role>.

1. Prepare a checklist of actions including the collection of physical keys and issued equipment.
2. For remote staff with any physical items to be returned, either:
   * schedule yourself or another qualified staff member to visit the terminated staff member's home or remote working location on the day of termination to pick up all the items, or
   * prepare and ship an envelop or box with an addressed and postage paid return shipping box.
2. Prepare a private space:
   * For in-office staff, reserve an office, meeting room, or other private space.
   * For remote staff, schedule a Zoom meeting and find a private place to attend.
3. Inform the staff member of the termination politely.
4. Collect all physical items including keys and issued equipment, or, for remote staff, inform the staff that either someone will be by shortly to collect the items or that they should receive a prepared shipping materials to ship the items back to the Company.
5. Inform the staff member of any residual rights and obligations, such as non-competes, severance, etc.

### Secure and transfer Google Workspace email and data

This is performed by a <role>Workspace Admin</role>.

1. Clear user data from their mobile devices, when possible.
   1. Locate the user in the [Google admin user's console](https://admin.google.com/ac/users).
   2. Click the user record.
   3. Scroll down and find devices. Click that.
      1. For each mobile, device, wipe the data.
      2. For devices where that is not an option, delete the device.
2. Take control of the user's account.
   1. Expand the 'Security' section.
   2. Replace or add your own email and phone number as recovery email and phone number.
   3. Click 'Sign in cookies' and then 'Reset'.
   4. Turn off 2-step verification.

   >  At this point, the user can no longer access their account and you have control.

6. Back up all the user's data.
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
5. Send the user's email to their manager for review and distribution.
   1. Alert the manager that the user's old emails are incoming. TODO: provide advice for sorting and labeling; have requested feedback from test transferee.
   2. Head over to the [Data Migration Service](https://admin.google.com/ac/dms).
   3. Click 'Add user'.
   4. Input the terminated user's email and click 'Authenticate'. You will need to authenticate with the password you created earlier and it will probably want to text you a security code.
   5. Allow the Data Migration service access to the account, and then copy the generated access code.
   6. Back in the Data Migration service tab, paste the access code and enter the email address to which you want to send the terminated user's emails.
6. Transfer their Drive files.
   1. As Workspace Admin, goto to '[Apps -> Google Workspace -> Drive and Docs](https://admin.google.com/ac/appsettings/55656082996)' (TODO: verify link good)
   2. Select 'Transfer Ownership'.
   3. The 'From user' is the terminated user, the 'To user' is their immediate manager.
7. Transfer Google Groups and Sites ownership:
   1. As the terminated user navigate to [Google Groups](https://groups.google.com). You can use a new tab in the incognito window we used for Takeout.
   2. For each group and site, select the group settings icon, and choose Membership and email settings, then Transfer ownership.
8. To export + transfer contacts:
   1. As the terminate user, go to [Google Contacts](https://contacts.google.com/) > (left menu) Export. Select vCard for compatibility.
   2. Save the contacts file like:
   ```
   <year>-<month>-<email prefix>-<surname_given name>-contacts.vcf
   e.g.: 2021-07-jsmith-smith_john-contacts.vcf
   ```
   3. Save the file in the archive folder created earlier.
   4. Email the contacts file to the terminate user's manager.
9. Once all the transfers have been completed, the user account can be deleted through the Google Workspace users page.
   * Set a reminder for yourself if you need to check on the account and confirm that all transfer and archival processes have completed.

#### References

* [5 steps to securely transfer G Suite data when an employee leaves your company](https://www.techrepublic.com/article/5-steps-to-securely-transfer-g-suite-data-when-an-employee-leaves-your-company/), 2021-07-13

## Version history

Date | Change description | Ticket | Ver. (git) | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------
2021-05-11 | Initial draft. | | 8954b0c | Zane Rockenbaugh &lt;zane@liquid-labs.com&gt; |
