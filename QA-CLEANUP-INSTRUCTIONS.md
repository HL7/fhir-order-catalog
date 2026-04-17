# QA Cleanup Instructions for Claude Code

These instructions fix the remaining QA issues after the March 23 2026 rebuild.
Current state: **7 errors, 4 warnings, 167 info** (down from 0/146/171).

All 7 errors and 3 of 4 warnings are fixable. The 1 remaining warning (JIRA spec file) requires a separate PR to an external HL7 repo.

---

## PRIORITY 1: Fix 7 Errors

### Error 1: Invalid SNOMED code in example-interaction.xml (1 error)

**File:** `input/examples/example-interaction.xml`

The SNOMED code `387002` for clarithromycin does not exist in the SNOMED CT International Edition. The correct code is `387517004`.

**Fix:** On line 22, change:
```xml
<code value="387002"/>
```
to:
```xml
<code value="387517004"/>
```

### Errors 2-7: Wrong SNOMED display names in example-lab-billing-vitamind-focus.xml (6 errors)

**File:** `input/examples/example-lab-billing-vitamind-focus.xml`

The IG publisher v2.2.2 now treats wrong display names as errors (previously informational in v2.0.29). The display values include SNOMED semantic tags in parentheses which must be removed. The file has `language` set to `fr-FR`, so the validator finds no French display, falls back to the default, and flags the mismatch.

**Fixes — update each display value:**

Line 50: Change `"Rickets (disorder)"` to `"Rickets"`

Line 64: Change `"Osteomalacia (disorder)"` to `"Osteomalacia"`

Line 78: Change `"Transplanted kidney present (finding)"` to `"Transplanted kidney present"`

Line 92: Change `"Assessment for bariatric surgery (procedure)"` to `"Assessment for bariatric surgery"`

Line 106: Change `"Assessment using falls risk assessment score for the elderly (procedure)"` to `"Assessment using Falls Risk Assessment Scale for the Elderly"` (note: casing and wording change — "Score" → "Scale", capitalize "Falls", "Risk", "Assessment", "Scale", "Elderly")

Line 120: Change `"Prescription of drug (procedure)"` to `"Prescription of drug"`

---

## PRIORITY 2: Fix 3 Suppressable Warnings

### Warning 1: SNOMED editorial guide URL suppression mismatch

**File:** `input/ignoreWarnings.txt`

Line 20 suppresses this as a CodeSystem message, but the publisher emits it as a URL message.

**Fix:** Add this line to the URL suppression section (after line 25):
```
No definition could be found for URL value 'https://confluence.ihtsdotools.org/display/DOCEG/SNOMED+CT+Editorial+Guide+-+Pharmaceutical+and+Biologic+Product'
```

### Warning 2-3: STORE code status mismatch (2 warnings)

**File:** `input/ignoreWarnings.txt`

Line 62 says `retired` but the publisher now says `inactive`.

**Fix:** Change line 62 from:
```
The concept 'STORE' has a status of retired and its use should be reviewed
```
to:
```
The concept 'STORE' has a status of inactive and its use should be reviewed
```

---

## NOT FIXABLE LOCALLY (1 warning)

### JIRA Specification File

The QA reports the JIRA spec file is out of date. This requires a separate PR to https://github.com/HL7/JIRA-Spec-Artifacts. After building, compare `template/jira-current.xml` with `template/jira-new.xml` and submit the updated file.

---

## Verification

After applying all fixes, rebuild with `./_build.sh build` and confirm:

1. **0 errors** — all 7 errors resolved
2. **1 warning** — only the JIRA spec file warning remains
3. **~167 info messages** — these are expected (deprecated jurisdiction ValueSet, draft CodeSystem references, etc.)
