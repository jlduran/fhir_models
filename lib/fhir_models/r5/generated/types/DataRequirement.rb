module FHIR
  module R5
    class DataRequirement < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'subject' => ['CodeableConcept', 'Reference']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'DataRequirement.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'DataRequirement.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/fhir-types'=>['Base', 'Element', 'BackboneElement', 'DataType', 'Address', 'Annotation', 'Attachment', 'Availability', 'BackboneType', 'Dosage', 'ElementDefinition', 'MarketingStatus', 'ProductShelfLife', 'Timing', 'CodeableConcept', 'CodeableReference', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'DataRequirement', 'Expression', 'ExtendedContactDetail', 'Extension', 'HumanName', 'Identifier', 'Meta', 'MonetaryComponent', 'Money', 'Narrative', 'ParameterDefinition', 'Period', 'PrimitiveType', 'base64Binary', 'boolean', 'date', 'dateTime', 'decimal', 'instant', 'integer', 'positiveInt', 'unsignedInt', 'integer64', 'string', 'code', 'id', 'markdown', 'time', 'uri', 'canonical', 'oid', 'url', 'uuid', 'Quantity', 'Age', 'Count', 'Distance', 'Duration', 'Range', 'Ratio', 'RatioRange', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'TriggerDefinition', 'UsageContext', 'VirtualServiceDetail', 'xhtml', 'Resource', 'Binary', 'Bundle', 'DomainResource', 'Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent', 'Basic', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure', 'CanonicalResource', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAssociation', 'DeviceDefinition', 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport', 'DocumentReference', 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MetadataResource', 'MolecularSequence', 'NamingSystem', 'NutritionIntake', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Permission', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport', 'ValueSet', 'VerificationResult', 'VisionPrescription', 'Parameters']}, 'path'=>'DataRequirement.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fhir-types'}},
        'profile' => {'path'=>'DataRequirement.profile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/fhir-types'=>['CareTeam', 'Device', 'Group', 'HealthcareService', 'Location', 'Organization', 'Patient', 'Practitioner', 'PractitionerRole', 'RelatedPerson']}, 'path'=>'DataRequirement.subject[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/participant-resource-types'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'DataRequirement.subject[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'mustSupport' => {'path'=>'DataRequirement.mustSupport', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'codeFilter' => {'path'=>'DataRequirement.codeFilter', 'type'=>'DataRequirement::CodeFilter', 'min'=>0, 'max'=>Float::INFINITY},
        'dateFilter' => {'path'=>'DataRequirement.dateFilter', 'type'=>'DataRequirement::DateFilter', 'min'=>0, 'max'=>Float::INFINITY},
        'valueFilter' => {'path'=>'DataRequirement.valueFilter', 'type'=>'DataRequirement::ValueFilter', 'min'=>0, 'max'=>Float::INFINITY},
        'limit' => {'path'=>'DataRequirement.limit', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'sort' => {'path'=>'DataRequirement.sort', 'type'=>'DataRequirement::Sort', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class CodeFilter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'CodeFilter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'CodeFilter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'path'=>'CodeFilter.path', 'type'=>'string', 'min'=>0, 'max'=>1},
          'searchParam' => {'path'=>'CodeFilter.searchParam', 'type'=>'string', 'min'=>0, 'max'=>1},
          'valueSet' => {'path'=>'CodeFilter.valueSet', 'type'=>'canonical', 'min'=>0, 'max'=>1},
          'code' => {'path'=>'CodeFilter.code', 'type'=>'Coding', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id          # 0-1 string
        attr_accessor :extension   # 0-* [ Extension ]
        attr_accessor :path        # 0-1 string
        attr_accessor :searchParam # 0-1 string
        attr_accessor :valueSet    # 0-1 canonical
        attr_accessor :code        # 0-* [ Coding ]
      end

      class DateFilter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['dateTime', 'Period', 'Duration']
        }
        METADATA = {
          'id' => {'path'=>'DateFilter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'DateFilter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'path'=>'DateFilter.path', 'type'=>'string', 'min'=>0, 'max'=>1},
          'searchParam' => {'path'=>'DateFilter.searchParam', 'type'=>'string', 'min'=>0, 'max'=>1},
          'valueDateTime' => {'path'=>'DateFilter.value[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'valuePeriod' => {'path'=>'DateFilter.value[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'valueDuration' => {'path'=>'DateFilter.value[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id            # 0-1 string
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :path          # 0-1 string
        attr_accessor :searchParam   # 0-1 string
        attr_accessor :valueDateTime # 0-1 dateTime
        attr_accessor :valuePeriod   # 0-1 Period
        attr_accessor :valueDuration # 0-1 Duration
      end

      class ValueFilter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['dateTime', 'Period', 'Duration']
        }
        METADATA = {
          'id' => {'path'=>'ValueFilter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ValueFilter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'path'=>'ValueFilter.path', 'type'=>'string', 'min'=>0, 'max'=>1},
          'searchParam' => {'path'=>'ValueFilter.searchParam', 'type'=>'string', 'min'=>0, 'max'=>1},
          'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/search-comparator'=>['eq', 'gt', 'lt', 'ge', 'le', 'sa', 'eb']}, 'path'=>'ValueFilter.comparator', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/value-filter-comparator'}},
          'valueDateTime' => {'path'=>'ValueFilter.value[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'valuePeriod' => {'path'=>'ValueFilter.value[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'valueDuration' => {'path'=>'ValueFilter.value[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id            # 0-1 string
        attr_accessor :extension     # 0-* [ Extension ]
        attr_accessor :path          # 0-1 string
        attr_accessor :searchParam   # 0-1 string
        attr_accessor :comparator    # 0-1 code
        attr_accessor :valueDateTime # 0-1 dateTime
        attr_accessor :valuePeriod   # 0-1 Period
        attr_accessor :valueDuration # 0-1 Duration
      end

      class Sort < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Sort.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Sort.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'path' => {'path'=>'Sort.path', 'type'=>'string', 'min'=>1, 'max'=>1},
          'direction' => {'valid_codes'=>{'http://hl7.org/fhir/sort-direction'=>['ascending', 'descending']}, 'path'=>'Sort.direction', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/sort-direction'}}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :path      # 1-1 string
        attr_accessor :direction # 1-1 code
      end

      attr_accessor :id                     # 0-1 string
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :type                   # 1-1 code
      attr_accessor :profile                # 0-* [ canonical ]
      attr_accessor :subjectCodeableConcept # 0-1 CodeableConcept
      attr_accessor :subjectReference       # 0-1 Reference(Group)
      attr_accessor :mustSupport            # 0-* [ string ]
      attr_accessor :codeFilter             # 0-* [ DataRequirement::CodeFilter ]
      attr_accessor :dateFilter             # 0-* [ DataRequirement::DateFilter ]
      attr_accessor :valueFilter            # 0-* [ DataRequirement::ValueFilter ]
      attr_accessor :limit                  # 0-1 positiveInt
      attr_accessor :sort                   # 0-* [ DataRequirement::Sort ]
    end
  end
end