module FHIR

  PRIMITIVES = {
    'base64Binary' => {'type'=>'string'},
    'boolean' => {'type'=>'boolean'},
    'code' => {'type'=>'string', 'regex'=>'[^\\s]+([\\s]?[^\\s]+)*'},
    'date' => {'type'=>'string', 'regex'=>'-?[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1]))?)?'},
    'dateTime' => {'type'=>'string', 'regex'=>'-?[0-9]{4}(-(0[1-9]|1[0-2])(-(0[0-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\\.[0-9]+)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)))?)?)?'},
    'decimal' => {'type'=>'number', 'regex'=>'-?([0]|([1-9][0-9]*))(\\.[0-9]+)?'},
    'id' => {'type'=>'string', 'regex'=>'[A-Za-z0-9\\-\\.]{1,64}'},
    'instant' => {'type'=>'string'},
    'integer' => {'type'=>'number', 'regex'=>'-?([0]|([1-9][0-9]*))'},
    'markdown' => {'type'=>'string'},
    'oid' => {'type'=>'string', 'regex'=>'urn:oid:(0|[1-9][0-9]*)(\\.(0|[1-9][0-9]*))*'},
    'positiveInt' => {'type'=>'number', 'regex'=>'[1-9][0-9]*'},
    'string' => {'type'=>'string'},
    'time' => {'type'=>'string', 'regex'=>'([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9](\\.[0-9]+)?'},
    'unsignedInt' => {'type'=>'number', 'regex'=>'[0]|([1-9][0-9]*)'},
    'uri' => {'type'=>'string'},
    'uuid' => {'type'=>'string', 'regex'=>'urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}'},
    'xhtml' => {'type'=>'string'}
  }
  TYPES = ['Element', 'BackboneElement', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'ElementDefinition', 'Extension', 'HumanName', 'Identifier', 'Meta', 'Money', 'Narrative', 'ParameterDefinition', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'Timing', 'TriggerDefinition', 'UsageContext']
  RESOURCES = ['Resource', 'Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BodySite', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'DataElement', 'DetectedIssue', 'Device', 'DeviceComponent', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EligibilityRequest', 'EligibilityResponse', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'ExpansionProfile', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingManifest', 'ImagingStudy', 'Immunization', 'ImmunizationRecommendation', 'ImplementationGuide', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationRequest', 'MedicationStatement', 'MessageDefinition', 'MessageHeader', 'NamingSystem', 'NutritionOrder', 'Observation', 'OperationDefinition', 'OperationOutcome', 'Organization', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'ProcedureRequest', 'ProcessRequest', 'ProcessResponse', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'ReferralRequest', 'RelatedPerson', 'RequestGroup', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'Sequence', 'ServiceDefinition', 'Slot', 'Specimen', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TestReport', 'TestScript', 'ValueSet', 'VisionPrescription']

end