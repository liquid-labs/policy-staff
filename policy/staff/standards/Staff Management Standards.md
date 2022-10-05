# Staff Management Standards

## Purpose and scope

These standards dea*l with the reviews and audits undertaken periodically and when hiring new staff members in order to support Company security and mitigate business risk.{{ if index . "security" }} As such, these standards are a part of the [Security Framework]({{ .security.SECURITY_FRAMEWORK }}).{{ end }}

## Standards

{{ template "staff/standards/Staff Management Standards - items" . }}

## Background check evaluation guidelines

Background checks are an integral part of onboarding many positions and help to ensure the {{ if .HAS_SENSITIVE_DATA }}confidentiality of sensitive customer data {{ if .HAS_CARDHOLDER_DATA }}and cardholder data in particular, {{ end }}as well as {{ end }}security of corporate funds. The results of any background checks should be evaluated in context of the position and individual history of the applicant.

### Credit issues

Personal credit issues are generally only a concern in cases where the position would give the applicant access to the corporate books or discretion over significant corporate funds. The key question is whether or not the severity and history of any issues would either A) create a significant incentive for the applicant to embezzle or otherwise mis-use Company funds or B) indicate a lack of judgement as regards the use or handling of Corporate funds.

The circumstances behind any issues should be considered. Certain "red flag" events, just as a bankruptcy filing, may be justified by personal circumstances or as a strategic decision. For significant issues, circumstances should be independently verified by interviewing other involved parties and/or the review of pertinent official documents.

### Criminal issues

Any criminal issues should be evaluated with reference to relevance as regards the position and the applicant's current circumstances.

* Convictions for embezzlement and other types of financial fraud{{ if .HAS_SENSITIVE_DATA }}, or involving the theft, misappropriation, or misuse of sensitive data{{ end }} are of a particular concern.
* Issues indicating recent or habitual problems with violence or a general disregard for the safety of others should be weighed against the individuals potential exposure to staff, clients, and customers.
* Issues not directly relevant to the position should generally be discounted.
* One-off issues five years or more in the past should generally be discounted.
* Any efforts on the part of the individual to provide restitution and/or address personal factors which may have contributed to any issues should be considered as potential mitigating factors.

## Version history

Date | Change description | Ticket | Ver. (git) | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------
2021-30-04 | Initial draft. | | 29aa11a | Zane Rockenbaugh &lt;zane@mocapay.com&gt; |
