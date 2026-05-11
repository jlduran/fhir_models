module FHIR
  module R4
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
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription'], 'http://hl7.org/fhir/abstract-types'=>['Type', 'Any']}, 'path'=>'DataRequirement.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/all-types'}},
        'profile' => {'path'=>'DataRequirement.profile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'subjectCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Patient', 'Practitioner', 'Organization', 'Location', 'Device']}, 'path'=>'DataRequirement.subject[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subject-type'}},
        'subjectReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'DataRequirement.subject[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'mustSupport' => {'path'=>'DataRequirement.mustSupport', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'codeFilter' => {'path'=>'DataRequirement.codeFilter', 'type'=>'DataRequirement::CodeFilter', 'min'=>0, 'max'=>Float::INFINITY},
        'dateFilter' => {'path'=>'DataRequirement.dateFilter', 'type'=>'DataRequirement::DateFilter', 'min'=>0, 'max'=>Float::INFINITY},
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
      attr_accessor :limit                  # 0-1 positiveInt
      attr_accessor :sort                   # 0-* [ DataRequirement::Sort ]
    end
  end
  DataRequirement = FHIR::R4::DataRequirement
end