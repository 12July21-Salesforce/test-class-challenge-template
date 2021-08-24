# Coding Challenge (Due 25 Aug 6 PM Eastern)

Observe the CaseTrigger and CaseTriggerHandler files. When a case record (or case records) are inserted or updated, this trigger checks if they are not related to a contact. If this is the case, and the SuppliedEmail field contains an email associated with a contact in the org, the trigger handler associates the case with that contact.

Write a test class that will implement single and bulk positive and negative tests for this trigger and trigger handler. Be sure to use assert methods in your test methods in order to ensure that the code is functioning as expected.
