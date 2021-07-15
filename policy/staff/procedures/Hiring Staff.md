# Hiring Staff

## Purpose and scope

This document lays out the procedures utilized in hiring including job postings, candidate review, and final selection.

## Procedures

### Initiating the hiring process

1. The 'responsible manager' is the party ultimately responsible for a given hire and the associated process. This is generally a <role>Department Head</role> or, for senior management positions, the positions direct manager per the [org chart]({{ .ORG_CHART }}). The <role>Board of Directors</role> is responsible for hiring the CEO, in which case the Chairman of the Board shall be responsible for undertaking the duties of the responsible manager on behalf of the Board as a whole.
2. The hiring process is initiated when the responsible manager creates a hiring epic in Jira. The responsible manager may specify:
   * custom content for a particular posting in the job posting task.
   * custom ranking criteria in the initial candidate screening task.
   * custom questions or other notes to be used in for initial candidate interviews.
   * custom questions or other notes to be used in for in-depth candidate interviews.

### Customized hiring tasks

The procedure outlined here is the general hiring procedure. The hiring task may be customized in the posting, screening, and selection tasks. Post-selection checks must be kept in place as is.

### Job postings

1. The responsible manager may specify the posting text as part of the job posting task within the hiring epic, according to the [job post content guidelines](#job-post-content-guidelines).
2. The responsible manager may specify any specific posting requirements as part o the job posting task description. Specific requirements should be clearly spelled out and may be captured as a sub-task. _Guidelines_: This may be used, for example, to announce a high level or niche position in a particular trade magazine or private group.
3. The job posting task is assigned to a <role>Human Resources Agent</role> or group.
4. The assigned <role>Human Resources Agent</role> completes the posting content as necessary and reviews the content for conformance to the [job post content guidelines](#job-post-content-guidelines). Any questions or deficiencies are addressed through the issue comments and directed towards the responsible manager in the first instance. By posting the job description and completing the task, the <role>Human Resources Agent</role> is implicitly approving the job description as consistent with Company Policy.
5. The assigned <role>Human Resources Agent</role> shall publish the posting internally by emailing the job description to 'team@{{ .COMPANY_EMAIL_DOMAIN }}'.
6. The assigned <role>Human Resources Agent</role> shall publish the posting to whichever job sites or other forums the Company generally employs, or as requested by the responsible manager.

All postings must be made both internally and through at least one external forum.

### Initial candidate screening

Initial candidate screening is used narrow the field of potential candidates.

1. The initial candidate screening task may be performed by either a <role>Human Resources Agent</role>, the responsible manager, or a designated resource familiar with the requirements of the role.
2. Any candidate who does not appear to have the necessary skills for a position should be excluded in the initial pass.
3. Any candidate who fails to answer all the [embedded filter questions](#embedded-filter-questions) should be excluded in the initial pass.
4. If more than 20 candidates remain after candidates are excluded for insufficiency in the initial pass, the responsible party shall apply a forced ranking to the remaining candidates according the [candidate forced ranking guidelines](#candidate-forced-ranking-guidelines).

### Initial candidate interviews

The initial candidate interview is intended to be a short, remote interview less than 20 minutes in length. The purpose is to identify candidates for an in-depth interview.

1. The responsible manager will review candidates according to the forced ranking list produced by the [initial candidate screening](#initial-candidate-screening) to identify a small number (~2-5) of top candidates for contact and interview. This may be handled as a single issue, or as sub-issues under the initial candidate interview task.
2. Top candidates will be contacted to set up an initial phone screening. The screening may be handled by the responsible manager or assigned to one or more qualified resources.
3. Before beginning the interview, the Company resource should prepare a blank interview form based on a standard form provided by Human Resources (based on the position) and any notes provided the the responsible manager.
4. Complete the candidates interview form during or immediately after the interview.
5. Attach/link the completed form to the initial candidate interview task or appropriate sub-task.
6. After reviewing the forms, the responsible manager will proceed to the in-depth interview or identify additional candidates from the pool for an initial interview.

### In-depth candidate interviews

1. Contact candidates identified to proceed to the in-depth interview are contacted and given a couple options for an in-depth interview.
2. The interview itself may be conducted by one or more of the responsible manager or other designated resources with the necessary qualifications to evaluate the candidate.
3. Before beginning the interview, responsible manager or designated lead interviewer will prepare a blank interview form based on a standard form provided by Human Resources (based on the position) and any notes provided the the responsible manager.
4. Complete the candidates interview form during or immediately after the interview. Where multiple Company resources are involved, merge each resources notes into a single document.
5. Attach/link the completed form to the initial candidate interview task or appropriate sub-task.
6. The responsible party will either identify a candidate for final checks or return to the candidate pool to identify further candidates for in-depth interviews, initial interviews, or work with HR to expand the candidate pool.

### Final candidate checks
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
3. The results of any checks should be retained by Human Resources until the process is complete. These results should only be accessible by designated Human Resource personnel. Do _NOT_ include these results in the task.
4. The results of any checks are evaluated according to the [background check evaluation guidelines]({{ .staff.standards.STAFF_MANAGEMENT_STANDARDS }}#background-check-evaluation-guidelines). A joint statement by the responsible manager and a qualified Human Resources Agent as to whether the candidate is to be disqualified or accepted based on the background checks is documented along with the results of the check and retained until the hiring process is complete.
5. If the candidate is disqualified, the responsible manager will return to the candidate pool and determine the next steps in identifying another final candidate.
6. If accepted, the an offer is made to the candidate.

### Offer

1. Once a final candidate is identified, an offer letter is generated by a <role>Human Resources Agent</role> according the role and any specific requirements as specified by the responsible manager. The offer letter must have an 'accept by' date.
2. The assigned <role>Human Resources Agent</role> shall handle initial communications regarding any questions or counter-offers and forward such communication to the responsible manager, with or without recommendations. All responses will flow through the responsible <role>Human Resources Agent</role>.
3. If the candidate accepts the offer within the specified time period, an [onboarding epic]({{ .staff.procedures.ONBOARDING_STAFF }}) is created.
4. If the offer is not accepted within the specified time period, the responsible manager shall determine next steps to identify additional candidates.

## Job post content guidelines

### General description

Job postings include a heading, summary, and description:
* The heading should name the position along with any critical characteristics such as "part time", "contract", etc.
* The summary should be taken from the [Company Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }}) summary of the position. The text may be modified to fit any further particulars of the particular position, but should retain the key components of the base summary. Where possible, use an additive approach.
* The description should be taken from the [Company Jobs and Roles Reference]({{ .staff.COMPANY_JOBS_AND_ROLES_REFERENCE }}) description of the position. The text may be modified to fit any further particulars of the particular position, but should retain the key components of the base summary. Where possible, use an additive approach. Elements of the base description may be omitted for the general description or in postings on a particular platform where necessary or advised for technical reasons.

### Embedded filter questions

Job postings should generally include some "embedded filter questions". This helps narrow the candidate pool to those who are specifically interested in this role filtering out candidates who are just replying to postings en masse. The embedded filter questions should state that they required "2-3 sentence answers". One or two questions are generally sufficient, and no more than three should be included in any post. The questions should be such that they can be answered by an applicant without recourse to technical documentation.

The content of answers are generally immaterial to the hiring process or selection. The point is to see _if_ the candidate answered the questions at all, which serves as a proxy for the candidates interest in the job and their general ability to notice details.

Self-filter questions are generally domain relevant. E.g.:
* For a developer position: "In 2-3 sentences, name an underrated technology and describe why you believe it it should be used more."
* For a sales position: "In 2-3 sentences, describe your approach to cold calling."
* For an HR position: "In 2-3 sentences, describe how you would deal with a sensitive staff complaint against a manager."

Human Resources may, in conjunction with department heads, develop a list of appropriate embedded filter questions to use for each position. These default questions may be used in postings where the responsible manager does not specify embedded filter questions of their own.

## Candidate forced ranking guidelines

Forced ranking is used to provide an initial order of review for prospective candidates. Ranking criteria is established based on each role. Where no specific criteria is specified by the responsible manager, then default rankings criteria as maintained by Human Resources shall be used.

Where no default rankings currently exist for a particular role, these are established by the party assigned to the initial candidate screening and the responsible manager. Rankings are generally based, in decreasing weight, on:
1. demonstrated success in projects which relate to the position,
2. demonstrated understanding/mastery of applicable skills,
3. demonstrated enthusiasm for the position, as with a custom cover letter or other communications,
4. experience in fields related to the position, and
5. general business experience.
