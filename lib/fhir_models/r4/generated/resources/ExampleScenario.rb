module FHIR
  module R4
    class ExampleScenario < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'ExampleScenario.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'ExampleScenario.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'ExampleScenario.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'ExampleScenario.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'ExampleScenario.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'ExampleScenario.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'ExampleScenario.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ExampleScenario.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'ExampleScenario.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'ExampleScenario.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'ExampleScenario.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'ExampleScenario.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'ExampleScenario.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'ExampleScenario.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'ExampleScenario.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'ExampleScenario.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'ExampleScenario.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'useContext' => {'path'=>'ExampleScenario.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'ExampleScenario.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'copyright' => {'path'=>'ExampleScenario.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'purpose' => {'path'=>'ExampleScenario.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'actor' => {'path'=>'ExampleScenario.actor', 'type'=>'ExampleScenario::Actor', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'path'=>'ExampleScenario.instance', 'type'=>'ExampleScenario::Instance', 'min'=>0, 'max'=>Float::INFINITY},
        'process' => {'path'=>'ExampleScenario.process', 'type'=>'ExampleScenario::Process', 'min'=>0, 'max'=>Float::INFINITY},
        'workflow' => {'path'=>'ExampleScenario.workflow', 'type'=>'canonical', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Actor < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Actor.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Actor.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Actor.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'actorId' => {'path'=>'Actor.actorId', 'type'=>'string', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/examplescenario-actor-type'=>['person', 'entity']}, 'path'=>'Actor.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/examplescenario-actor-type'}},
          'name' => {'path'=>'Actor.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Actor.description', 'type'=>'markdown', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :actorId           # 1-1 string
        attr_accessor :type              # 1-1 code
        attr_accessor :name              # 0-1 string
        attr_accessor :description       # 0-1 markdown
      end

      class Instance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Instance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Instance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Instance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'resourceId' => {'path'=>'Instance.resourceId', 'type'=>'string', 'min'=>1, 'max'=>1},
          'resourceType' => {'local_name'=>'local_resourceType', 'valid_codes'=>{'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'path'=>'Instance.resourceType', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
          'name' => {'path'=>'Instance.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Instance.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'version' => {'path'=>'Instance.version', 'type'=>'ExampleScenario::Instance::Version', 'min'=>0, 'max'=>Float::INFINITY},
          'containedInstance' => {'path'=>'Instance.containedInstance', 'type'=>'ExampleScenario::Instance::ContainedInstance', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Version < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Version.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Version.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Version.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'versionId' => {'path'=>'Version.versionId', 'type'=>'string', 'min'=>1, 'max'=>1},
            'description' => {'path'=>'Version.description', 'type'=>'markdown', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :versionId         # 1-1 string
          attr_accessor :description       # 1-1 markdown
        end

        class ContainedInstance < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'ContainedInstance.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'ContainedInstance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'ContainedInstance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'resourceId' => {'path'=>'ContainedInstance.resourceId', 'type'=>'string', 'min'=>1, 'max'=>1},
            'versionId' => {'path'=>'ContainedInstance.versionId', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :resourceId        # 1-1 string
          attr_accessor :versionId         # 0-1 string
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :resourceId         # 1-1 string
        attr_accessor :local_resourceType # 1-1 code
        attr_accessor :name               # 0-1 string
        attr_accessor :description        # 0-1 markdown
        attr_accessor :version            # 0-* [ ExampleScenario::Instance::Version ]
        attr_accessor :containedInstance  # 0-* [ ExampleScenario::Instance::ContainedInstance ]
      end

      class Process < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Process.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Process.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Process.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'path'=>'Process.title', 'type'=>'string', 'min'=>1, 'max'=>1},
          'description' => {'path'=>'Process.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'preConditions' => {'path'=>'Process.preConditions', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'postConditions' => {'path'=>'Process.postConditions', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'step' => {'path'=>'Process.step', 'type'=>'ExampleScenario::Process::Step', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Step < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Step.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Step.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Step.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'process' => {'path'=>'Step.process', 'type'=>'ExampleScenario::Process', 'min'=>0, 'max'=>Float::INFINITY},
            'pause' => {'path'=>'Step.pause', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'operation' => {'path'=>'Step.operation', 'type'=>'ExampleScenario::Process::Step::Operation', 'min'=>0, 'max'=>1},
            'alternative' => {'path'=>'Step.alternative', 'type'=>'ExampleScenario::Process::Step::Alternative', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Operation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Operation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Operation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Operation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'number' => {'path'=>'Operation.number', 'type'=>'string', 'min'=>1, 'max'=>1},
              'type' => {'path'=>'Operation.type', 'type'=>'string', 'min'=>0, 'max'=>1},
              'name' => {'path'=>'Operation.name', 'type'=>'string', 'min'=>0, 'max'=>1},
              'initiator' => {'path'=>'Operation.initiator', 'type'=>'string', 'min'=>0, 'max'=>1},
              'receiver' => {'path'=>'Operation.receiver', 'type'=>'string', 'min'=>0, 'max'=>1},
              'description' => {'path'=>'Operation.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
              'initiatorActive' => {'path'=>'Operation.initiatorActive', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'receiverActive' => {'path'=>'Operation.receiverActive', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'request' => {'path'=>'Operation.request', 'type'=>'ExampleScenario::Instance::ContainedInstance', 'min'=>0, 'max'=>1},
              'response' => {'path'=>'Operation.response', 'type'=>'ExampleScenario::Instance::ContainedInstance', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :number            # 1-1 string
            attr_accessor :type              # 0-1 string
            attr_accessor :name              # 0-1 string
            attr_accessor :initiator         # 0-1 string
            attr_accessor :receiver          # 0-1 string
            attr_accessor :description       # 0-1 markdown
            attr_accessor :initiatorActive   # 0-1 boolean
            attr_accessor :receiverActive    # 0-1 boolean
            attr_accessor :request           # 0-1 ExampleScenario::Instance::ContainedInstance
            attr_accessor :response          # 0-1 ExampleScenario::Instance::ContainedInstance
          end

          class Alternative < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Alternative.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Alternative.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Alternative.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'title' => {'path'=>'Alternative.title', 'type'=>'string', 'min'=>1, 'max'=>1},
              'description' => {'path'=>'Alternative.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
              'step' => {'path'=>'Alternative.step', 'type'=>'ExampleScenario::Process::Step', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :title             # 1-1 string
            attr_accessor :description       # 0-1 markdown
            attr_accessor :step              # 0-* [ ExampleScenario::Process::Step ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :process           # 0-* [ ExampleScenario::Process ]
          attr_accessor :pause             # 0-1 boolean
          attr_accessor :operation         # 0-1 ExampleScenario::Process::Step::Operation
          attr_accessor :alternative       # 0-* [ ExampleScenario::Process::Step::Alternative ]
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :title             # 1-1 string
        attr_accessor :description       # 0-1 markdown
        attr_accessor :preConditions     # 0-1 markdown
        attr_accessor :postConditions    # 0-1 markdown
        attr_accessor :step              # 0-* [ ExampleScenario::Process::Step ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 0-1 uri
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :actor             # 0-* [ ExampleScenario::Actor ]
      attr_accessor :instance          # 0-* [ ExampleScenario::Instance ]
      attr_accessor :process           # 0-* [ ExampleScenario::Process ]
      attr_accessor :workflow          # 0-* [ canonical ]

      def resourceType
        'ExampleScenario'
      end
    end
  end
  ExampleScenario = FHIR::R4::ExampleScenario
end