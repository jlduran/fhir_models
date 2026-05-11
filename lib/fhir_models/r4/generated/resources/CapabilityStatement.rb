module FHIR
  module R4
    class CapabilityStatement < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'fhirversion', 'format', 'guide', 'jurisdiction', 'mode', 'name', 'publisher', 'resource', 'resource-profile', 'security-service', 'software', 'status', 'supported-profile', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'CapabilityStatement.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'CapabilityStatement.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'CapabilityStatement.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'CapabilityStatement.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'CapabilityStatement.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'CapabilityStatement.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'CapabilityStatement.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'CapabilityStatement.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'CapabilityStatement.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'version' => {'path'=>'CapabilityStatement.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'CapabilityStatement.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'title' => {'path'=>'CapabilityStatement.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'CapabilityStatement.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'CapabilityStatement.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'CapabilityStatement.date', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'publisher' => {'path'=>'CapabilityStatement.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'CapabilityStatement.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'CapabilityStatement.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'CapabilityStatement.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'CapabilityStatement.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'CapabilityStatement.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'CapabilityStatement.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/capability-statement-kind'=>['instance', 'capability', 'requirements']}, 'path'=>'CapabilityStatement.kind', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/capability-statement-kind'}},
        'instantiates' => {'path'=>'CapabilityStatement.instantiates', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'imports' => {'path'=>'CapabilityStatement.imports', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'software' => {'path'=>'CapabilityStatement.software', 'type'=>'CapabilityStatement::Software', 'min'=>0, 'max'=>1},
        'implementation' => {'path'=>'CapabilityStatement.implementation', 'type'=>'CapabilityStatement::Implementation', 'min'=>0, 'max'=>1},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1']}, 'path'=>'CapabilityStatement.fhirVersion', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        'format' => {'path'=>'CapabilityStatement.format', 'type'=>'code', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'patchFormat' => {'path'=>'CapabilityStatement.patchFormat', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'implementationGuide' => {'path'=>'CapabilityStatement.implementationGuide', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
        'rest' => {'path'=>'CapabilityStatement.rest', 'type'=>'CapabilityStatement::Rest', 'min'=>0, 'max'=>Float::INFINITY},
        'messaging' => {'path'=>'CapabilityStatement.messaging', 'type'=>'CapabilityStatement::Messaging', 'min'=>0, 'max'=>Float::INFINITY},
        'document' => {'path'=>'CapabilityStatement.document', 'type'=>'CapabilityStatement::Document', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Software < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Software.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Software.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Software.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Software.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'version' => {'path'=>'Software.version', 'type'=>'string', 'min'=>0, 'max'=>1},
          'releaseDate' => {'path'=>'Software.releaseDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :version           # 0-1 string
        attr_accessor :releaseDate       # 0-1 dateTime
      end

      class Implementation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Implementation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Implementation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Implementation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'Implementation.description', 'type'=>'string', 'min'=>1, 'max'=>1},
          'url' => {'path'=>'Implementation.url', 'type'=>'url', 'min'=>0, 'max'=>1},
          'custodian' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Implementation.custodian', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 1-1 string
        attr_accessor :url               # 0-1 url
        attr_accessor :custodian         # 0-1 Reference(Organization)
      end

      class Rest < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Rest.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Rest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Rest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/restful-capability-mode'=>['client', 'server']}, 'path'=>'Rest.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/restful-capability-mode'}},
          'documentation' => {'path'=>'Rest.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'security' => {'path'=>'Rest.security', 'type'=>'CapabilityStatement::Rest::Security', 'min'=>0, 'max'=>1},
          'resource' => {'path'=>'Rest.resource', 'type'=>'CapabilityStatement::Rest::Resource', 'min'=>0, 'max'=>Float::INFINITY},
          'interaction' => {'path'=>'Rest.interaction', 'type'=>'CapabilityStatement::Rest::Interaction', 'min'=>0, 'max'=>Float::INFINITY},
          'searchParam' => {'path'=>'Rest.searchParam', 'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'path'=>'Rest.operation', 'type'=>'CapabilityStatement::Rest::Resource::Operation', 'min'=>0, 'max'=>Float::INFINITY},
          'compartment' => {'path'=>'Rest.compartment', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Security < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Security.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Security.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Security.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'cors' => {'path'=>'Security.cors', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'service' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/restful-security-service'=>['OAuth', 'SMART-on-FHIR', 'NTLM', 'Basic', 'Kerberos', 'Certificates']}, 'path'=>'Security.service', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/restful-security-service'}},
            'description' => {'path'=>'Security.description', 'type'=>'markdown', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :cors              # 0-1 boolean
          attr_accessor :service           # 0-* [ CodeableConcept ]
          attr_accessor :description       # 0-1 markdown
        end

        class Resource < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Resource.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Resource.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Resource.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'path'=>'Resource.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
            'profile' => {'path'=>'Resource.profile', 'type'=>'canonical', 'min'=>0, 'max'=>1},
            'supportedProfile' => {'path'=>'Resource.supportedProfile', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY},
            'documentation' => {'path'=>'Resource.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
            'interaction' => {'path'=>'Resource.interaction', 'type'=>'CapabilityStatement::Rest::Resource::Interaction', 'min'=>0, 'max'=>Float::INFINITY},
            'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/versioning-policy'=>['no-version', 'versioned', 'versioned-update']}, 'path'=>'Resource.versioning', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/versioning-policy'}},
            'readHistory' => {'path'=>'Resource.readHistory', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'updateCreate' => {'path'=>'Resource.updateCreate', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'conditionalCreate' => {'path'=>'Resource.conditionalCreate', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'conditionalRead' => {'valid_codes'=>{'http://hl7.org/fhir/conditional-read-status'=>['not-supported', 'modified-since', 'not-match', 'full-support']}, 'path'=>'Resource.conditionalRead', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conditional-read-status'}},
            'conditionalUpdate' => {'path'=>'Resource.conditionalUpdate', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'conditionalDelete' => {'valid_codes'=>{'http://hl7.org/fhir/conditional-delete-status'=>['not-supported', 'single', 'multiple']}, 'path'=>'Resource.conditionalDelete', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conditional-delete-status'}},
            'referencePolicy' => {'valid_codes'=>{'http://hl7.org/fhir/reference-handling-policy'=>['literal', 'logical', 'resolves', 'enforced', 'local']}, 'path'=>'Resource.referencePolicy', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-handling-policy'}},
            'searchInclude' => {'path'=>'Resource.searchInclude', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'searchRevInclude' => {'path'=>'Resource.searchRevInclude', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
            'searchParam' => {'path'=>'Resource.searchParam', 'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Resource.operation', 'type'=>'CapabilityStatement::Rest::Resource::Operation', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Interaction < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Interaction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Interaction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Interaction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create', 'search-type']}, 'path'=>'Interaction.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/type-restful-interaction'}},
              'documentation' => {'path'=>'Interaction.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :documentation     # 0-1 markdown
          end

          class SearchParam < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'SearchParam.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'SearchParam.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'SearchParam.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'path'=>'SearchParam.name', 'type'=>'string', 'min'=>1, 'max'=>1},
              'definition' => {'path'=>'SearchParam.definition', 'type'=>'canonical', 'min'=>0, 'max'=>1},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/search-param-type'=>['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special']}, 'path'=>'SearchParam.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-param-type'}},
              'documentation' => {'path'=>'SearchParam.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 string
            attr_accessor :definition        # 0-1 canonical
            attr_accessor :type              # 1-1 code
            attr_accessor :documentation     # 0-1 markdown
          end

          class Operation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Operation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Operation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Operation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'path'=>'Operation.name', 'type'=>'string', 'min'=>1, 'max'=>1},
              'definition' => {'path'=>'Operation.definition', 'type'=>'canonical', 'min'=>1, 'max'=>1},
              'documentation' => {'path'=>'Operation.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 string
            attr_accessor :definition        # 1-1 canonical
            attr_accessor :documentation     # 0-1 markdown
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 code
          attr_accessor :profile           # 0-1 canonical
          attr_accessor :supportedProfile  # 0-* [ canonical ]
          attr_accessor :documentation     # 0-1 markdown
          attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Resource::Interaction ]
          attr_accessor :versioning        # 0-1 code
          attr_accessor :readHistory       # 0-1 boolean
          attr_accessor :updateCreate      # 0-1 boolean
          attr_accessor :conditionalCreate # 0-1 boolean
          attr_accessor :conditionalRead   # 0-1 code
          attr_accessor :conditionalUpdate # 0-1 boolean
          attr_accessor :conditionalDelete # 0-1 code
          attr_accessor :referencePolicy   # 0-* [ code ]
          attr_accessor :searchInclude     # 0-* [ string ]
          attr_accessor :searchRevInclude  # 0-* [ string ]
          attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
          attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
        end

        class Interaction < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Interaction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Interaction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Interaction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['transaction', 'batch', 'search-system', 'history-system']}, 'path'=>'Interaction.code', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/system-restful-interaction'}},
            'documentation' => {'path'=>'Interaction.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :documentation     # 0-1 markdown
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :security          # 0-1 CapabilityStatement::Rest::Security
        attr_accessor :resource          # 0-* [ CapabilityStatement::Rest::Resource ]
        attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Interaction ]
        attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
        attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
        attr_accessor :compartment       # 0-* [ canonical ]
      end

      class Messaging < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Messaging.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Messaging.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Messaging.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'endpoint' => {'path'=>'Messaging.endpoint', 'type'=>'CapabilityStatement::Messaging::Endpoint', 'min'=>0, 'max'=>Float::INFINITY},
          'reliableCache' => {'path'=>'Messaging.reliableCache', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1},
          'documentation' => {'path'=>'Messaging.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'supportedMessage' => {'path'=>'Messaging.supportedMessage', 'type'=>'CapabilityStatement::Messaging::SupportedMessage', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Endpoint < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Endpoint.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Endpoint.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Endpoint.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'protocol' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/message-transport'=>['http', 'ftp', 'mllp']}, 'path'=>'Endpoint.protocol', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/message-transport'}},
            'address' => {'path'=>'Endpoint.address', 'type'=>'url', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :protocol          # 1-1 Coding
          attr_accessor :address           # 1-1 url
        end

        class SupportedMessage < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'SupportedMessage.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'SupportedMessage.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'SupportedMessage.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/event-capability-mode'=>['sender', 'receiver']}, 'path'=>'SupportedMessage.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-capability-mode'}},
            'definition' => {'path'=>'SupportedMessage.definition', 'type'=>'canonical', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :mode              # 1-1 code
          attr_accessor :definition        # 1-1 canonical
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :endpoint          # 0-* [ CapabilityStatement::Messaging::Endpoint ]
        attr_accessor :reliableCache     # 0-1 unsignedInt
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :supportedMessage  # 0-* [ CapabilityStatement::Messaging::SupportedMessage ]
      end

      class Document < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Document.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Document.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Document.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/document-mode'=>['producer', 'consumer']}, 'path'=>'Document.mode', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/document-mode'}},
          'documentation' => {'path'=>'Document.documentation', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'profile' => {'path'=>'Document.profile', 'type'=>'canonical', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :profile           # 1-1 canonical
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :language            # 0-1 code
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :url                 # 0-1 uri
      attr_accessor :version             # 0-1 string
      attr_accessor :name                # 0-1 string
      attr_accessor :title               # 0-1 string
      attr_accessor :status              # 1-1 code
      attr_accessor :experimental        # 0-1 boolean
      attr_accessor :date                # 1-1 dateTime
      attr_accessor :publisher           # 0-1 string
      attr_accessor :contact             # 0-* [ ContactDetail ]
      attr_accessor :description         # 0-1 markdown
      attr_accessor :useContext          # 0-* [ UsageContext ]
      attr_accessor :jurisdiction        # 0-* [ CodeableConcept ]
      attr_accessor :purpose             # 0-1 markdown
      attr_accessor :copyright           # 0-1 markdown
      attr_accessor :kind                # 1-1 code
      attr_accessor :instantiates        # 0-* [ canonical ]
      attr_accessor :imports             # 0-* [ canonical ]
      attr_accessor :software            # 0-1 CapabilityStatement::Software
      attr_accessor :implementation      # 0-1 CapabilityStatement::Implementation
      attr_accessor :fhirVersion         # 1-1 code
      attr_accessor :format              # 1-* [ code ]
      attr_accessor :patchFormat         # 0-* [ code ]
      attr_accessor :implementationGuide # 0-* [ canonical ]
      attr_accessor :rest                # 0-* [ CapabilityStatement::Rest ]
      attr_accessor :messaging           # 0-* [ CapabilityStatement::Messaging ]
      attr_accessor :document            # 0-* [ CapabilityStatement::Document ]

      def resourceType
        'CapabilityStatement'
      end
    end
  end
  CapabilityStatement = FHIR::R4::CapabilityStatement
end