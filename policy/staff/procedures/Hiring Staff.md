# Hiring Staff

## Purpose and scope

This document lays out the procedures utilized in hiring including job postings, candidate review, and final selection.

## Procedures



**Process overview** :
1. [Create a hiring epic + individual tasks.](#create-hiring-epic)
2. Reviews:
   1. [HR review of post and content.](#review-job-post-content)
   2. [Budgetary review and approval.](#approve-hiring-requisition)
3. [Prep and post position.](#prep-and-post-job)
4. (sometimes) [Screen and rank candidates.](#screen-and-rank-candidates)
5. (sometimes) [Interview candidates](#interview-candidates) :
   1. (sometimes) [Initial interview.](#initial-candidate-interviews)
   2. (sometimes) [In-depth interview](#in-depth-candidate-interviews) (where applicable).
6. (sometimes) [Vet final candidate(s).](#vet-final-candidates)
7. [Make offer.](#make-offer)

Notice that the screening, interview, and vetting are sometimes required, sometimes not. It depends on the role and circumstances of the hire. What to include is determined when [creating the hiring epic](#create-hiring-epic).

**Roles** :
1. Responsible manager : the new hire's immediate manager.
2. <role>HR Agent</role> : responsible for verifying the post meets company standards, creating the post, supports the interview and decision making process, and makes the offer on behalf of the company.
3. <role>Department head</role> : potentially involved in interview and decision making process on a role-by-role basis.

### Create hiring epic

1. There are no restrictions on who can create a hiring epic, though this is usually done by the responsible manager, the <role>department head</role>, or by an <role>HR Agent</role> at the request of a manager or head.
   * When hiring a CEO, where the responsible manager would be the Board of Directors, the Board shall appoint an individual—typically the Chairman of the Board—to be assigned the epic.
2. The epic description must contain a 'Hiring steps', 'Post description', 'Posting guidelines', and 'Selection guidelines' sections.
3. Update the 'Hiring steps' section to describe whether or not screening and interviews are going to be required and/or truncated.
4. Verify/create the following tasks and assignments within the epic:
   1. HR review for policy compliance (assigned to HR Agent or Head of HR).
   2. Requisition review and approval (assigned to department head, senior manager, or the Board of Directors).
   3. Prep and post the position (assigned to HR Agent or Head of HR).
   4. (If used) screen candidates (assigned to HR Agent, Head of HR).
   5. (If used) candidate interviews (assigned to the epic owner).
   6. Candidate vetting (assigned to HR Agent or Head of HR). Note that vetting is not always required, but the task is always created as it is HR's job to dmake the determination.
   7. Make an offer (assigned to HR Agent or Head of HR).
3. In the epic description 'Post description', provide the posting details according to the [job post content guidelines](#job-post-content-guidelines), clearly specifying the desired post header, summary, description, and candidate filter questions.
4. Where modifications to the default process are made:
   1. In the epic description 'Notes' section:
      * Include an itemized list of any changes made to the job summary or description.
      * Note changes or additions to filter, initial interview, and/or in-depth interview questions.
   2. Note custom or modified posting targets in the posting task description specifying where, when, and/or how to post the position.
   3. Note modified or additional criteria to be used in the candidate ranking process in the screen and rank task description.
   4. If the screening and ranking is to be carried out by some group other than the Hiring Team, note the individuals or group who will perform this action in the screen and rank task description.

### Review job post content

1. An <role>HR Agent</role> is assigned to the 'HR review' task.
2. The assigned agent verifies:
   * the job title, summary, and description are consistent with the standard [Company Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }}) job description.
   * any modifications to the descriptive contents or questions are consistent with company policy.
3. Any issues found in the review are directed at the issue owner by adding comments to the hiring epic.
4. Once the review is complete and any issues resolved, the <role>HR agent</role> marks the task as complete.

### Approve hiring requisition

1. Once the content review is complete, a department head, senior manager, or the Board of Directors (as specified in the [job's definition per the Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }})) will review and approve by completing the requisition review and approval task.
2. Any issues or questions should be directed towards the epic owner as comments in the epic.
3. Once the review is complete and any issues resolved, the review task may be completed indicating:
   * It has been deemed necessary and/or beneficial that the hire be made.
   * Sufficient budget has been allocated for the hire.

### Prep and post job

1. After completion of the content and requisition reviews, the <role>HR Agent</role> begins the posting process.
2. If the epic description indicates that the screening and interview steps are not required, then skip to step number 6.
3. In the Google shared drive 'Staff' under the Hiring -> [Records]({{ .STAFF_HIRING_RECORDS_FOLDER_URL }}), create a new folder named with the current date and job title: '<YYYY-MM-DD> <title>'. E.g., "2021-06-15 Human Resource Agent".
4. Within that folder, create:
  * a 'Candidates' folder.
  * an 'Interview resources' folder.
  * a "Candidates Tracker" spreadsheet titled ''<YYYY-MM-DD> <title> Candidates' using the [Hiring Candidates Tracker Template]({{ .HIRING_CANDIDATES_TRACKER_TEMPLATE_URL }}).
  * an "Initial Interview Template" form (using Google Forms). Unless otherwise instructed, use a template from the [Interview Templates]({{ .HIRING_INITIAL_INTERVIEW_TEMPLATES }}) folder as appropriate to the role, if available and using a default or ad-hoc template as necessary.
  * an "In-Depth Interview Template" form (using Google Forms). Unless otherwise instructed, use a template from the [Interview Templates]({{ .HIRING_INITIAL_INTERVIEW_TEMPLATES }}) folder as appropriate to the role, if available  and using a default or ad-hoc template as necessary.
5. Update the Candidate Tracker embedded ranking logic per hiring specific instructions.
6. Unless otherwise instructed, announce the new opening internally via email to 'team@{{ .COMPANY_EMAIL_DOMAIN }}' internally using the 'hiring@{{ .COMPANY_EMAIL_DOMAIN }}' address as the originator.
7. Unless otherwise specified in the posting task, external posts are made using the 'hiring@{{ .COMPANY_EMAIL_DOMAIN }}' account to {{ .STAFF_DEFAULT_OPENINGS_POSTED_AT }}.
   * Where possible, the <role>HR Agent</role> will make the postings themselves.
   * In cases where the post should come from another individual, the <role>HR Agent</role> will alert the individual and confirm that the posting has been made.

### Screen and rank candidates

_Guidelines_ : Candidate screening is used narrow the field of potential candidates. These actions may be performed automatically in-whole or in-part, but are always the responsibility of the task assignee.

1. The candidate screening task may be assigned to either a <role>Human Resources Agent</role> (default) or the head of HR.
   * In general, the actual screening process may be performed by multiple individuals in the 'Hiring Team' group unless otherwise specified.
   * The record of who processed which response is implicitly captured in the history of the Candidate Tracker spreadsheet as it is edited.
2. Each incoming responses is screened for:
   * the necessary skills or other attributes required by the position.
   * a reasonable response to all the [candidate filter questions](#candidate-filter-questions).
3. In the Hiring Candidates spreadsheet created earlier, add an entry for each candidate and fill out the 'screening' records.
4. Using best judgement, any screener may advance the initial candidate interview task to 'in progress' after ensuring the initial candidate interview task description contains links to:
   * the Candidate Tracker spreadsheet, and
   * the 'Initial Interview Template'.

### Interview candidates

1. The epic owner is also responsible and assigned to the candidate review task, which covers both initial and in-depth interviews.
2. The task owner may assign others to assist and/or participate in the interview process. Everyone involved in the process must be documented in the issue description.

#### Initial candidate interviews

_Guidelines_ : The initial candidate interview is a remote interview generally less than 20 minutes in length. The purpose is to identify a handful candidates for an in-depth interview. The interviews are generally conducted in chunks of no more than ~5-6 interviews focusing on the top candidates and moving down the list until a sufficient pool of 2-4 candidates have been identified for the in-depth interview stage.

1. The task owner may manually re-order the forced ranking generated force ranking in the Candidate Tracker spreadsheet.
2. The task owner is responsible for assigning and communicating interviews to individuals by creating new tasks in the epic. Each task should:
   * link to the root hiring project folder (which contains the Candidate Tracker and Candidates folder).
   * link Candidate Tracker sheet for contact information,
   * indicate which candidates to contact. (This may be a number, specific candidates, etc.)
   * instruct the assignee to:
      * create a sub-folder in the 'Candidates' folder using the candidates email for the folder name.
      * clone the Initial Interview Form Template into the sub-folder and rename it '<email> Initial Interview'.
      * contact the assigned candidates and complete the initial interview form.
      * update the initial interview fields for each candidate interviewed in the Candidate Tracker spreadsheet.
3. Ensure that all assigned users have access to the root hiring project folder.

#### In-depth candidate interviews

_Guidelines_ : In-depth interviews are intended to identify final candidates and may involve multiple company participants depending on the job being filled.

1. Taking the results of initial interviews together along with the original ordering, the task owner shall identify which candidates shall proceed to the in-depth interview.
2. Create tasks for an <role>HR Agent</role> or assistant to contact and schedule time with each individual candidate, being sure to include:
   * any company staff which should be included in the interview and whether or not they are optional, and
   * how long to block off for the interview.
3. Prior to the interview itself, use the In-Depth Interview Template created earlier to create a blank interview notes documents for each participating staff member to make notes in. These are named like '<candidate email> In-Depth Interview Notes - <staff email>'.
4. Remind all participants to complete the interview notes during or immediately after the interview.
5. After evaluating the interview notes and discussion with any other company participants, the task owner may designate one or more candidates to proceed to vetting by updating the vetting task description and advancing the status to "in progress".

### Vet final candidate
_(SOC 2 Type I ref 1.4, SOC 2 Type II ref 1.4)_

1. A designated <role>Human Resources Agent</role> shall run a credit check on the identified candidate for:
   * positions in the Finance department,
   * <role>Department Heads</role>, and/or
   * positions at the VP level and above.
2. A designated <role>Human Resources Agent</role> shall run a criminal background check on the identified candidate for:
   * positions in the Operations department,
   * positions in the Development department,
   * positions in the Finance department,
   * positions in the Compliance department,
   * positions at the VP level or above
3. The results of any checks:
   * are retained by Human Resources until the process is complete.
   * are only accessible by designated Human Resource personnel.
   * are _NOT_ shared with other participants in the process _NOR_ saved to the hiring project folder.
4. Results are evaluated according to the [background check evaluation guidelines]({{ .staff.standards.STAFF_MANAGEMENT_STANDARDS }}#background-check-evaluation-guidelines).
5. The <role>HR Agent</role> shall update the appropriate record in the Candidate Tracker spreadsheet.
6. Where disqualifying red flags are raised, the <role>HR Agent</role> shall notify the hiring epic task owner using neutral language and without divulging the particulars.
7. Where non-disqualifying red flags are raised, the <role>HR Agent</role> shall coordinate with the appropriate department head or senior manager to jointly agree agree to a statement, recorded in the Candidate Tracker spreadsheet, as to wether the candidate is disqualified or not.
   * Any issues should be described with as much discretion as possible.
   * In no case, should any record of the issues be created outside of the background check report. Any durable communications created during this process, such as email, should not name the individual or the specific issues.

### Make offer

1. The hiring task owner may direct an offer to be made to any candidates passing the vetting phase by updating the description of the offer task and advancing the status to "in progress".
2. An offer letter is generated by a <role>Human Resources Agent</role>:
   * starting with a standard template,
   * incorporating the job description as captured in the epic description for this specific hire, and
   * specifying an 'offer expiration' date.
3. The assigned <role>Human Resources Agent</role> shall handle initial communications regarding any questions or counter-offers and forward such communication to the responsible manager, with or without recommendations. All responses will flow through the responsible <role>Human Resources Agent</role>.
4. If the candidate accepts the offer within the specified time period, an [onboarding epic]({{ .staff.procedures.ONBOARDING_STAFF }}) is created with the expected on-board date reflected in the task date.

## Job post content guidelines

### General description

* Use the titles, summary, and description from the [Company Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }}) as a starting point.
   * If there is no suitable role, then refer to the contact department head or, for senior management and executive roles, the CEO regarding adding (TODO: link) or modifying (TODO: link) a role.
* Include a clearly labeled heading, summary, and description.
* The heading should name the position using a Jobs and Roles Ref title along with any critical characteristics such as "part time", "contract", etc.
* The summary should be taken from the [Company Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }}) summary of the position.
   * The text may be modified to fit any further particulars of the particular position but must retain the key components of the base summary.
   * Where possible, use an additive approach.
* The description should be taken from the [Company Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }}) description of the position.
   * The text may be modified to fit any further particulars of the particular position, but should retain the key components of the base description.
   * Where possible, use an additive approach.
   * Elements of the base description may be omitted from the post description for brevity and clarity.
* Job posts made to specific platforms may require further editing for technical reasons.

### Candidate filter questions

Job postings should generally include some "candidate filter questions". This helps narrow the candidate pool to those who are specifically interested in this role filtering out candidates who are just replying to postings en masse. The candidate filter questions should state that they required "2-3 sentence answers". One or two questions are generally sufficient, and no more than three should be included in any post. The questions should be such that they can be answered by an applicant without recourse to technical documentation.

The primary point is to see _if_ the candidate answered the questions at all, which serves as a proxy for the candidates interest in the job and their general ability to notice details. The questions are generally so simple that any reasonable answer is acceptable.

Filter questions are generally domain relevant. E.g.:
* For a developer position: "In 2-3 sentences, name an underrated technology and describe why you believe it it should be used more."
* For a sales position: "In 2-3 sentences, describe your approach to cold calling."
* For an HR position: "In 2-3 sentences, describe how you would deal with a sensitive staff complaint against a manager."

Appropriate filter questions are maintained as part of the internal job and roles definition and available, by role, in the Hiring Guidelines Reference (TODO: create and link .staff.HIRING_GUIDELINES_REFERENCE).

## Determining hiring requirements guidelines

* Default requirements are specified for each role in the Hiring Guidelines Reference (TODO: create and link .staff.HIRING_GUIDELINES_REFERENCE).
* So long as the plan as captured in the epic is approved by the department head or senior management (as specified in the Hiring Guidelines Reference (TODO: create and link .staff.HIRING_GUIDELINES_REFERENCE)), the screening and/or interview steps may be skipped or truncated from the baseline procedure.
* Where required, candidates _MUST_ be vetted.

## Posting guidelines

* Posts are generally simultaneously announced internally and posted externally.
* The company shall select one or more services as default targets for posting (currently, Indeed).
* The epic owner may specify modified and/or additional targets including additional services, direct mail to a list of candidates, "internal only", etc.

## Candidate forced ranking guidelines

Forced ranking is used to provide an initial order of review for prospective candidates. Ranking criteria is established based on each role. Where no specific criteria is specified by the responsible manager, then default rankings criteria as maintained by Human Resources shall be used.

Rankings are generally performed using a weighted average of scores ranging from 1-3 correlating to 'sufficient', 'average' and 'exceptional'. Rankings are generally based, in decreasing weight, on:
1. demonstrated success in projects which relate to the position,
2. demonstrated understanding/mastery of applicable skills,
3. demonstrated enthusiasm for the position, as with a custom cover letter or other communications,
4. experience in fields related to the position, and
5. general business experience.
