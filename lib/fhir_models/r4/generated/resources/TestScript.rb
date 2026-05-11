module FHIR
  module R4
    class TestScript < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'identifier', 'jurisdiction', 'name', 'publisher', 'status', 'testscript-capability', 'title', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'TestScript.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'TestScript.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'TestScript.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'TestScript.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'TestScript.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'TestScript.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'TestScript.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'TestScript.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'path'=>'TestScript.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
        'identifier' => {'path'=>'TestScript.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'version' => {'path'=>'TestScript.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'TestScript.name', 'type'=>'string', 'min'=>1, 'max'=>1},
        'title' => {'path'=>'TestScript.title', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'path'=>'TestScript.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'path'=>'TestScript.experimental', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'TestScript.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'publisher' => {'path'=>'TestScript.publisher', 'type'=>'string', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'TestScript.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'TestScript.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'useContext' => {'path'=>'TestScript.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'path'=>'TestScript.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'path'=>'TestScript.purpose', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'copyright' => {'path'=>'TestScript.copyright', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'origin' => {'path'=>'TestScript.origin', 'type'=>'TestScript::Origin', 'min'=>0, 'max'=>Float::INFINITY},
        'destination' => {'path'=>'TestScript.destination', 'type'=>'TestScript::Destination', 'min'=>0, 'max'=>Float::INFINITY},
        'metadata' => {'path'=>'TestScript.metadata', 'type'=>'TestScript::Metadata', 'min'=>0, 'max'=>1},
        'fixture' => {'path'=>'TestScript.fixture', 'type'=>'TestScript::Fixture', 'min'=>0, 'max'=>Float::INFINITY},
        'profile' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'TestScript.profile', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'variable' => {'path'=>'TestScript.variable', 'type'=>'TestScript::Variable', 'min'=>0, 'max'=>Float::INFINITY},
        'setup' => {'path'=>'TestScript.setup', 'type'=>'TestScript::Setup', 'min'=>0, 'max'=>1},
        'test' => {'path'=>'TestScript.test', 'type'=>'TestScript::Test', 'min'=>0, 'max'=>Float::INFINITY},
        'teardown' => {'path'=>'TestScript.teardown', 'type'=>'TestScript::Teardown', 'min'=>0, 'max'=>1}
      }

      class Origin < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Origin.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Origin.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Origin.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'index' => {'path'=>'Origin.index', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'profile' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types'=>['FHIR-Client', 'FHIR-SDC-FormFiller']}, 'path'=>'Origin.profile', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-profile-origin-types'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :index             # 1-1 integer
        attr_accessor :profile           # 1-1 Coding
      end

      class Destination < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Destination.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Destination.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Destination.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'index' => {'path'=>'Destination.index', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'profile' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types'=>['FHIR-Server', 'FHIR-SDC-FormManager', 'FHIR-SDC-FormProcessor', 'FHIR-SDC-FormReceiver']}, 'path'=>'Destination.profile', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-profile-destination-types'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :index             # 1-1 integer
        attr_accessor :profile           # 1-1 Coding
      end

      class Metadata < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Metadata.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Metadata.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Metadata.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'link' => {'path'=>'Metadata.link', 'type'=>'TestScript::Metadata::Link', 'min'=>0, 'max'=>Float::INFINITY},
          'capability' => {'path'=>'Metadata.capability', 'type'=>'TestScript::Metadata::Capability', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Link < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Link.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Link.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Link.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'url' => {'path'=>'Link.url', 'type'=>'uri', 'min'=>1, 'max'=>1},
            'description' => {'path'=>'Link.description', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :url               # 1-1 uri
          attr_accessor :description       # 0-1 string
        end

        class Capability < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Capability.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Capability.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Capability.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'required' => {'path'=>'Capability.required', 'type'=>'boolean', 'min'=>1, 'max'=>1},
            'validated' => {'path'=>'Capability.validated', 'type'=>'boolean', 'min'=>1, 'max'=>1},
            'description' => {'path'=>'Capability.description', 'type'=>'string', 'min'=>0, 'max'=>1},
            'origin' => {'path'=>'Capability.origin', 'type'=>'integer', 'min'=>0, 'max'=>Float::INFINITY},
            'destination' => {'path'=>'Capability.destination', 'type'=>'integer', 'min'=>0, 'max'=>1},
            'link' => {'path'=>'Capability.link', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
            'capabilities' => {'path'=>'Capability.capabilities', 'type'=>'canonical', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :required          # 1-1 boolean
          attr_accessor :validated         # 1-1 boolean
          attr_accessor :description       # 0-1 string
          attr_accessor :origin            # 0-* [ integer ]
          attr_accessor :destination       # 0-1 integer
          attr_accessor :link              # 0-* [ uri ]
          attr_accessor :capabilities      # 1-1 canonical
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :link              # 0-* [ TestScript::Metadata::Link ]
        attr_accessor :capability        # 1-* [ TestScript::Metadata::Capability ]
      end

      class Fixture < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Fixture.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Fixture.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Fixture.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'autocreate' => {'path'=>'Fixture.autocreate', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'autodelete' => {'path'=>'Fixture.autodelete', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'resource' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Fixture.resource', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :autocreate        # 1-1 boolean
        attr_accessor :autodelete        # 1-1 boolean
        attr_accessor :resource          # 0-1 Reference(Resource)
      end

      class Variable < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Variable.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Variable.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Variable.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Variable.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'defaultValue' => {'path'=>'Variable.defaultValue', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Variable.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'expression' => {'path'=>'Variable.expression', 'type'=>'string', 'min'=>0, 'max'=>1},
          'headerField' => {'path'=>'Variable.headerField', 'type'=>'string', 'min'=>0, 'max'=>1},
          'hint' => {'path'=>'Variable.hint', 'type'=>'string', 'min'=>0, 'max'=>1},
          'path' => {'path'=>'Variable.path', 'type'=>'string', 'min'=>0, 'max'=>1},
          'sourceId' => {'path'=>'Variable.sourceId', 'type'=>'id', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :defaultValue      # 0-1 string
        attr_accessor :description       # 0-1 string
        attr_accessor :expression        # 0-1 string
        attr_accessor :headerField       # 0-1 string
        attr_accessor :hint              # 0-1 string
        attr_accessor :path              # 0-1 string
        attr_accessor :sourceId          # 0-1 id
      end

      class Setup < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Setup.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Setup.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Setup.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'path'=>'Setup.action', 'type'=>'TestScript::Setup::Action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Action.operation', 'type'=>'TestScript::Setup::Action::Operation', 'min'=>0, 'max'=>1},
            'assert' => {'path'=>'Action.assert', 'type'=>'TestScript::Setup::Action::Assert', 'min'=>0, 'max'=>1}
          }

          class Operation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Operation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Operation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Operation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/testscript-operation-codes'=>['read', 'vread', 'update', 'updateCreate', 'patch', 'delete', 'deleteCondSingle', 'deleteCondMultiple', 'history', 'create', 'search', 'batch', 'transaction', 'capabilities', 'apply', 'closure', 'find-matches', 'conforms', 'data-requirements', 'document', 'evaluate', 'evaluate-measure', 'everything', 'expand', 'find', 'graphql', 'implements', 'lastn', 'lookup', 'match', 'meta', 'meta-add', 'meta-delete', 'populate', 'populatehtml', 'populatelink', 'process-message', 'questionnaire', 'stats', 'subset', 'subsumes', 'transform', 'translate', 'validate', 'validate-code']}, 'path'=>'Operation.type', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-operation-codes'}},
              'resource' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'path'=>'Operation.resource', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/defined-types'}},
              'label' => {'path'=>'Operation.label', 'type'=>'string', 'min'=>0, 'max'=>1},
              'description' => {'path'=>'Operation.description', 'type'=>'string', 'min'=>0, 'max'=>1},
              'accept' => {'path'=>'Operation.accept', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
              'contentType' => {'path'=>'Operation.contentType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
              'destination' => {'path'=>'Operation.destination', 'type'=>'integer', 'min'=>0, 'max'=>1},
              'encodeRequestUrl' => {'path'=>'Operation.encodeRequestUrl', 'type'=>'boolean', 'min'=>1, 'max'=>1},
              'method' => {'local_name'=>'local_method', 'valid_codes'=>{'http://hl7.org/fhir/http-operations'=>['delete', 'get', 'options', 'patch', 'post', 'put', 'head']}, 'path'=>'Operation.method', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/http-operations'}},
              'origin' => {'path'=>'Operation.origin', 'type'=>'integer', 'min'=>0, 'max'=>1},
              'params' => {'path'=>'Operation.params', 'type'=>'string', 'min'=>0, 'max'=>1},
              'requestHeader' => {'path'=>'Operation.requestHeader', 'type'=>'TestScript::Setup::Action::Operation::RequestHeader', 'min'=>0, 'max'=>Float::INFINITY},
              'requestId' => {'path'=>'Operation.requestId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'responseId' => {'path'=>'Operation.responseId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'sourceId' => {'path'=>'Operation.sourceId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'targetId' => {'path'=>'Operation.targetId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'url' => {'path'=>'Operation.url', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            class RequestHeader < Model
              include FHIR::Hashable
              include FHIR::Json
              include FHIR::Xml

              METADATA = {
                'id' => {'path'=>'RequestHeader.id', 'type'=>'string', 'min'=>0, 'max'=>1},
                'extension' => {'path'=>'RequestHeader.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'modifierExtension' => {'path'=>'RequestHeader.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
                'field' => {'path'=>'RequestHeader.field', 'type'=>'string', 'min'=>1, 'max'=>1},
                'value' => {'path'=>'RequestHeader.value', 'type'=>'string', 'min'=>1, 'max'=>1}
              }

              attr_accessor :id                # 0-1 string
              attr_accessor :extension         # 0-* [ Extension ]
              attr_accessor :modifierExtension # 0-* [ Extension ]
              attr_accessor :field             # 1-1 string
              attr_accessor :value             # 1-1 string
            end

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 Coding
            attr_accessor :resource          # 0-1 code
            attr_accessor :label             # 0-1 string
            attr_accessor :description       # 0-1 string
            attr_accessor :accept            # 0-1 code
            attr_accessor :contentType       # 0-1 code
            attr_accessor :destination       # 0-1 integer
            attr_accessor :encodeRequestUrl  # 1-1 boolean
            attr_accessor :local_method      # 0-1 code
            attr_accessor :origin            # 0-1 integer
            attr_accessor :params            # 0-1 string
            attr_accessor :requestHeader     # 0-* [ TestScript::Setup::Action::Operation::RequestHeader ]
            attr_accessor :requestId         # 0-1 id
            attr_accessor :responseId        # 0-1 id
            attr_accessor :sourceId          # 0-1 id
            attr_accessor :targetId          # 0-1 id
            attr_accessor :url               # 0-1 string
          end

          class Assert < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Assert.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Assert.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Assert.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'label' => {'path'=>'Assert.label', 'type'=>'string', 'min'=>0, 'max'=>1},
              'description' => {'path'=>'Assert.description', 'type'=>'string', 'min'=>0, 'max'=>1},
              'direction' => {'valid_codes'=>{'http://hl7.org/fhir/assert-direction-codes'=>['response', 'request']}, 'path'=>'Assert.direction', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/assert-direction-codes'}},
              'compareToSourceId' => {'path'=>'Assert.compareToSourceId', 'type'=>'string', 'min'=>0, 'max'=>1},
              'compareToSourceExpression' => {'path'=>'Assert.compareToSourceExpression', 'type'=>'string', 'min'=>0, 'max'=>1},
              'compareToSourcePath' => {'path'=>'Assert.compareToSourcePath', 'type'=>'string', 'min'=>0, 'max'=>1},
              'contentType' => {'path'=>'Assert.contentType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
              'expression' => {'path'=>'Assert.expression', 'type'=>'string', 'min'=>0, 'max'=>1},
              'headerField' => {'path'=>'Assert.headerField', 'type'=>'string', 'min'=>0, 'max'=>1},
              'minimumId' => {'path'=>'Assert.minimumId', 'type'=>'string', 'min'=>0, 'max'=>1},
              'navigationLinks' => {'path'=>'Assert.navigationLinks', 'type'=>'boolean', 'min'=>0, 'max'=>1},
              'operator' => {'valid_codes'=>{'http://hl7.org/fhir/assert-operator-codes'=>['equals', 'notEquals', 'in', 'notIn', 'greaterThan', 'lessThan', 'empty', 'notEmpty', 'contains', 'notContains', 'eval']}, 'path'=>'Assert.operator', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/assert-operator-codes'}},
              'path' => {'path'=>'Assert.path', 'type'=>'string', 'min'=>0, 'max'=>1},
              'requestMethod' => {'valid_codes'=>{'http://hl7.org/fhir/http-operations'=>['delete', 'get', 'options', 'patch', 'post', 'put', 'head']}, 'path'=>'Assert.requestMethod', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/http-operations'}},
              'requestURL' => {'path'=>'Assert.requestURL', 'type'=>'string', 'min'=>0, 'max'=>1},
              'resource' => {'valid_codes'=>{'http://hl7.org/fhir/data-types'=>['Address', 'Age', 'Annotation', 'Attachment', 'BackboneElement', 'CodeableConcept', 'Coding', 'ContactDetail', 'ContactPoint', 'Contributor', 'Count', 'DataRequirement', 'Distance', 'Dosage', 'Duration', 'Element', 'ElementDefinition', 'Expression', 'Extension', 'HumanName', 'Identifier', 'MarketingStatus', 'Meta', 'Money', 'MoneyQuantity', 'Narrative', 'ParameterDefinition', 'Period', 'Population', 'ProdCharacteristic', 'ProductShelfLife', 'Quantity', 'Range', 'Ratio', 'Reference', 'RelatedArtifact', 'SampledData', 'Signature', 'SimpleQuantity', 'SubstanceAmount', 'Timing', 'TriggerDefinition', 'UsageContext', 'base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'xhtml'], 'http://hl7.org/fhir/resource-types'=>['Account', 'ActivityDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'CatalogEntry', 'ChargeItem', 'ChargeItemDefinition', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceDefinition', 'DeviceMetric', 'DeviceRequest', 'DeviceUseStatement', 'DiagnosticReport', 'DocumentManifest', 'DocumentReference', 'DomainResource', 'EffectEvidenceSynthesis', 'Encounter', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'InsurancePlan', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'Measure', 'MeasureReport', 'Media', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProduct', 'MedicinalProductAuthorization', 'MedicinalProductContraindication', 'MedicinalProductIndication', 'MedicinalProductIngredient', 'MedicinalProductInteraction', 'MedicinalProductManufactured', 'MedicinalProductPackaged', 'MedicinalProductPharmaceutical', 'MedicinalProductUndesirableEffect', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionOrder', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RelatedPerson', 'RequestGroup', 'ResearchDefinition', 'ResearchElementDefinition', 'ResearchStudy', 'ResearchSubject', 'Resource', 'RiskAssessment', 'RiskEvidenceSynthesis', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'Substance', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SubstanceSpecification', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestReport', 'TestScript', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'path'=>'Assert.resource', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/defined-types'}},
              'response' => {'valid_codes'=>{'http://hl7.org/fhir/assert-response-code-types'=>['okay', 'created', 'noContent', 'notModified', 'bad', 'forbidden', 'notFound', 'methodNotAllowed', 'conflict', 'gone', 'preconditionFailed', 'unprocessable']}, 'path'=>'Assert.response', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/assert-response-code-types'}},
              'responseCode' => {'path'=>'Assert.responseCode', 'type'=>'string', 'min'=>0, 'max'=>1},
              'sourceId' => {'path'=>'Assert.sourceId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'validateProfileId' => {'path'=>'Assert.validateProfileId', 'type'=>'id', 'min'=>0, 'max'=>1},
              'value' => {'path'=>'Assert.value', 'type'=>'string', 'min'=>0, 'max'=>1},
              'warningOnly' => {'path'=>'Assert.warningOnly', 'type'=>'boolean', 'min'=>1, 'max'=>1}
            }

            attr_accessor :id                        # 0-1 string
            attr_accessor :extension                 # 0-* [ Extension ]
            attr_accessor :modifierExtension         # 0-* [ Extension ]
            attr_accessor :label                     # 0-1 string
            attr_accessor :description               # 0-1 string
            attr_accessor :direction                 # 0-1 code
            attr_accessor :compareToSourceId         # 0-1 string
            attr_accessor :compareToSourceExpression # 0-1 string
            attr_accessor :compareToSourcePath       # 0-1 string
            attr_accessor :contentType               # 0-1 code
            attr_accessor :expression                # 0-1 string
            attr_accessor :headerField               # 0-1 string
            attr_accessor :minimumId                 # 0-1 string
            attr_accessor :navigationLinks           # 0-1 boolean
            attr_accessor :operator                  # 0-1 code
            attr_accessor :path                      # 0-1 string
            attr_accessor :requestMethod             # 0-1 code
            attr_accessor :requestURL                # 0-1 string
            attr_accessor :resource                  # 0-1 code
            attr_accessor :response                  # 0-1 code
            attr_accessor :responseCode              # 0-1 string
            attr_accessor :sourceId                  # 0-1 id
            attr_accessor :validateProfileId         # 0-1 id
            attr_accessor :value                     # 0-1 string
            attr_accessor :warningOnly               # 1-1 boolean
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestScript::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestScript::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestScript::Setup::Action ]
      end

      class Test < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Test.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Test.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Test.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Test.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Test.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'action' => {'path'=>'Test.action', 'type'=>'TestScript::Test::Action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Action.operation', 'type'=>'TestScript::Setup::Action::Operation', 'min'=>0, 'max'=>1},
            'assert' => {'path'=>'Action.assert', 'type'=>'TestScript::Setup::Action::Assert', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestScript::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestScript::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 0-1 string
        attr_accessor :description       # 0-1 string
        attr_accessor :action            # 1-* [ TestScript::Test::Action ]
      end

      class Teardown < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Teardown.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Teardown.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Teardown.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'path'=>'Teardown.action', 'type'=>'TestScript::Teardown::Action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Action.operation', 'type'=>'TestScript::Setup::Action::Operation', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 1-1 TestScript::Setup::Action::Operation
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestScript::Teardown::Action ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :url               # 1-1 uri
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :version           # 0-1 string
      attr_accessor :name              # 1-1 string
      attr_accessor :title             # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :experimental      # 0-1 boolean
      attr_accessor :date              # 0-1 dateTime
      attr_accessor :publisher         # 0-1 string
      attr_accessor :contact           # 0-* [ ContactDetail ]
      attr_accessor :description       # 0-1 markdown
      attr_accessor :useContext        # 0-* [ UsageContext ]
      attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
      attr_accessor :purpose           # 0-1 markdown
      attr_accessor :copyright         # 0-1 markdown
      attr_accessor :origin            # 0-* [ TestScript::Origin ]
      attr_accessor :destination       # 0-* [ TestScript::Destination ]
      attr_accessor :metadata          # 0-1 TestScript::Metadata
      attr_accessor :fixture           # 0-* [ TestScript::Fixture ]
      attr_accessor :profile           # 0-* [ Reference(Resource) ]
      attr_accessor :variable          # 0-* [ TestScript::Variable ]
      attr_accessor :setup             # 0-1 TestScript::Setup
      attr_accessor :test              # 0-* [ TestScript::Test ]
      attr_accessor :teardown          # 0-1 TestScript::Teardown

      def resourceType
        'TestScript'
      end
    end
  end
  TestScript = FHIR::R4::TestScript
end