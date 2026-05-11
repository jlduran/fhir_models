module FHIR
  module R5
    class AuditEvent < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurred' => ['Period', 'dateTime']
      }
      SEARCH_PARAMS = ['action', 'agent', 'agent-role', 'based-on', 'category', 'code', 'date', 'encounter', 'entity', 'entity-role', 'outcome', 'patient', 'policy', 'purpose', 'source']
      METADATA = {
        'id' => {'path'=>'AuditEvent.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'AuditEvent.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'AuditEvent.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'AuditEvent.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'AuditEvent.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'AuditEvent.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'AuditEvent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'AuditEvent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'category' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['110100', '110101', '110102', '110103', '110104', '110105', '110106', '110107', '110108', '110109', '110110', '110111', '110112', '110113', '110114'], 'http://terminology.hl7.org/CodeSystem/audit-event-type'=>['rest', 'hl7-v2', 'hl7-v3', 'document', 'object']}, 'path'=>'AuditEvent.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-type'}},
        'code' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['110120', '110121', '110122', '110123', '110124', '110125', '110126', '110127', '110128', '110129', '110130', '110131', '110132', '110133', '110134', '110135', '110136', '110137', '110138', '110139', '110140', '110141', '110142', '110143', '110144', '110145', '110146', '110147'], 'http://hl7.org/fhir/restful-interaction'=>['read', 'vread', 'update', 'patch', 'delete', 'history', 'history-instance', 'history-type', 'history-system', 'create', 'search', 'search-type', 'search-system', 'search-compartment', 'capabilities', 'transaction', 'batch', 'operation']}, 'path'=>'AuditEvent.code', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-sub-type'}},
        'action' => {'valid_codes'=>{'http://hl7.org/fhir/audit-event-action'=>['C', 'R', 'U', 'D', 'E']}, 'path'=>'AuditEvent.action', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-action'}},
        'severity' => {'valid_codes'=>{'http://hl7.org/fhir/audit-event-severity'=>['emergency', 'alert', 'critical', 'error', 'warning', 'notice', 'informational', 'debug']}, 'path'=>'AuditEvent.severity', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-severity'}},
        'occurredPeriod' => {'path'=>'AuditEvent.occurred[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'occurredDateTime' => {'path'=>'AuditEvent.occurred[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'recorded' => {'path'=>'AuditEvent.recorded', 'type'=>'instant', 'min'=>1, 'max'=>1},
        'outcome' => {'path'=>'AuditEvent.outcome', 'type'=>'AuditEvent::Outcome', 'min'=>0, 'max'=>1},
        'authorization' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'path'=>'AuditEvent.authorization', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CarePlan', 'http://hl7.org/fhir/StructureDefinition/DeviceRequest', 'http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation', 'http://hl7.org/fhir/StructureDefinition/MedicationRequest', 'http://hl7.org/fhir/StructureDefinition/NutritionOrder', 'http://hl7.org/fhir/StructureDefinition/ServiceRequest', 'http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'AuditEvent.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'AuditEvent.patient', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'AuditEvent.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'agent' => {'path'=>'AuditEvent.agent', 'type'=>'AuditEvent::Agent', 'min'=>1, 'max'=>Float::INFINITY},
        'source' => {'path'=>'AuditEvent.source', 'type'=>'AuditEvent::Source', 'min'=>1, 'max'=>1},
        'entity' => {'path'=>'AuditEvent.entity', 'type'=>'AuditEvent::Entity', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Outcome < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Outcome.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Outcome.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Outcome.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'valid_codes'=>{'http://hl7.org/fhir/issue-severity'=>['fatal', 'error', 'warning', 'information', 'success']}, 'path'=>'Outcome.code', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-outcome'}},
          'detail' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/operation-outcome'=>['DELETE_MULTIPLE_MATCHES', 'MSG_AUTH_REQUIRED', 'MSG_BAD_FORMAT', 'MSG_BAD_SYNTAX', 'MSG_CANT_PARSE_CONTENT', 'MSG_CANT_PARSE_ROOT', 'MSG_CREATED', 'MSG_DATE_FORMAT', 'MSG_DELETED', 'MSG_DELETED_DONE', 'MSG_DELETED_ID', 'MSG_DUPLICATE_ID', 'MSG_ERROR_PARSING', 'MSG_EXTERNAL_FAIL', 'MSG_ID_INVALID', 'MSG_ID_TOO_LONG', 'MSG_INVALID_ID', 'MSG_JSON_OBJECT', 'MSG_LOCAL_FAIL', 'MSG_NO_EXIST', 'MSG_NO_MATCH', 'MSG_NO_MODULE', 'MSG_NO_SUMMARY', 'MSG_OP_NOT_ALLOWED', 'MSG_PARAM_CHAINED', 'MSG_PARAM_INVALID', 'MSG_PARAM_MODIFIER_INVALID', 'MSG_PARAM_NO_REPEAT', 'MSG_PARAM_UNKNOWN', 'MSG_RESOURCE_EXAMPLE_PROTECTED', 'MSG_RESOURCE_ID_FAIL', 'MSG_RESOURCE_ID_MISMATCH', 'MSG_RESOURCE_ID_MISSING', 'MSG_RESOURCE_NOT_ALLOWED', 'MSG_RESOURCE_REQUIRED', 'MSG_RESOURCE_TYPE_MISMATCH', 'MSG_SORT_UNKNOWN', 'MSG_TRANSACTION_DUPLICATE_ID', 'MSG_TRANSACTION_MISSING_ID', 'MSG_UNHANDLED_NODE_TYPE', 'MSG_UNKNOWN_CONTENT', 'MSG_UNKNOWN_OPERATION', 'MSG_UNKNOWN_TYPE', 'MSG_UPDATED', 'MSG_VERSION_AWARE', 'MSG_VERSION_AWARE_CONFLICT', 'MSG_VERSION_AWARE_URL', 'MSG_WRONG_NS', 'SEARCH_MULTIPLE', 'SEARCH_NONE', 'UPDATE_MULTIPLE_MATCHES']}, 'path'=>'Outcome.detail', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-outcome-detail'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 Coding
        attr_accessor :detail            # 0-* [ CodeableConcept ]
      end

      class Agent < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'network' => ['Reference', 'uri', 'string']
        }
        METADATA = {
          'id' => {'path'=>'Agent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Agent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Agent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser']}, 'path'=>'Agent.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/participation-role-type'}},
          'role' => {'valid_codes'=>{'sample-security-structural-roles'=>['regulated-health-professionals', 'general-medicine', 'general-nursing', 'dentist', 'veterinarian', 'pharmacy', 'dietician', 'pediatrics', 'non-regulated-health-professionals', 'receptionist', 'business-manager', 'transcriptionist', 'claims-adjudicator']}, 'path'=>'Agent.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Agent.who', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'requestor' => {'path'=>'Agent.requestor', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Agent.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'policy' => {'path'=>'Agent.policy', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
          'networkReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Agent.network[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'networkUri' => {'path'=>'Agent.network[x]', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'networkString' => {'path'=>'Agent.network[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'authorization' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'path'=>'Agent.authorization', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :role              # 0-* [ CodeableConcept ]
        attr_accessor :who               # 1-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|Device|RelatedPerson)
        attr_accessor :requestor         # 0-1 boolean
        attr_accessor :location          # 0-1 Reference(Location)
        attr_accessor :policy            # 0-* [ uri ]
        attr_accessor :networkReference  # 0-1 Reference(Endpoint)
        attr_accessor :networkUri        # 0-1 uri
        attr_accessor :networkString     # 0-1 string
        attr_accessor :authorization     # 0-* [ CodeableConcept ]
      end

      class Source < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Source.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Source.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Source.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'site' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Source.site', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'observer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Source.observer', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/security-source-type'=>['1', '2', '3', '4', '5', '6', '7', '8']}, 'path'=>'Source.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/security-source-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :site              # 0-1 Reference(Location)
        attr_accessor :observer          # 1-1 Reference(Practitioner|PractitionerRole|Organization|CareTeam|Patient|Device|RelatedPerson)
        attr_accessor :type              # 0-* [ CodeableConcept ]
      end

      class Entity < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Entity.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Entity.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Entity.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'what' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Entity.what', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/object-role'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24']}, 'path'=>'Entity.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/object-role'}},
          'securityLabel' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-Confidentiality'=>['N', 'R'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['ETH', 'PSY', 'STD', 'NOAUTH', 'DELAU', 'NORDSCLCD'], 'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['TREAT', 'HPAYMT', 'ETREAT']}, 'path'=>'Entity.securityLabel', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-label-examples'}},
          'query' => {'path'=>'Entity.query', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
          'detail' => {'path'=>'Entity.detail', 'type'=>'AuditEvent::Entity::Detail', 'min'=>0, 'max'=>Float::INFINITY},
          'agent' => {'path'=>'Entity.agent', 'type'=>'AuditEvent::Agent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Detail < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['Quantity', 'CodeableConcept', 'string', 'boolean', 'integer', 'Range', 'Ratio', 'time', 'dateTime', 'Period', 'base64Binary']
          }
          METADATA = {
            'id' => {'path'=>'Detail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Detail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Detail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://dicom.nema.org/resources/ontology/DCM'=>['110100', '110101', '110102', '110103', '110104', '110105', '110106', '110107', '110108', '110109', '110110', '110111', '110112', '110113', '110114'], 'http://terminology.hl7.org/CodeSystem/audit-event-type'=>['rest', 'hl7-v2', 'hl7-v3', 'document', 'object']}, 'path'=>'Detail.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/audit-event-type'}},
            'valueQuantity' => {'path'=>'Detail.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
            'valueCodeableConcept' => {'path'=>'Detail.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
            'valueString' => {'path'=>'Detail.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
            'valueBoolean' => {'path'=>'Detail.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
            'valueInteger' => {'path'=>'Detail.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
            'valueRange' => {'path'=>'Detail.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
            'valueRatio' => {'path'=>'Detail.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
            'valueTime' => {'path'=>'Detail.value[x]', 'type'=>'time', 'min'=>1, 'max'=>1},
            'valueDateTime' => {'path'=>'Detail.value[x]', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
            'valuePeriod' => {'path'=>'Detail.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
            'valueBase64Binary' => {'path'=>'Detail.value[x]', 'type'=>'base64Binary', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :type                 # 1-1 CodeableConcept
          attr_accessor :valueQuantity        # 1-1 Quantity
          attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
          attr_accessor :valueString          # 1-1 string
          attr_accessor :valueBoolean         # 1-1 boolean
          attr_accessor :valueInteger         # 1-1 integer
          attr_accessor :valueRange           # 1-1 Range
          attr_accessor :valueRatio           # 1-1 Ratio
          attr_accessor :valueTime            # 1-1 time
          attr_accessor :valueDateTime        # 1-1 dateTime
          attr_accessor :valuePeriod          # 1-1 Period
          attr_accessor :valueBase64Binary    # 1-1 base64Binary
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :what              # 0-1 Reference(Resource)
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :securityLabel     # 0-* [ CodeableConcept ]
        attr_accessor :query             # 0-1 base64Binary
        attr_accessor :detail            # 0-* [ AuditEvent::Entity::Detail ]
        attr_accessor :agent             # 0-* [ AuditEvent::Agent ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :category          # 0-* [ CodeableConcept ]
      attr_accessor :code              # 1-1 CodeableConcept
      attr_accessor :action            # 0-1 code
      attr_accessor :severity          # 0-1 code
      attr_accessor :occurredPeriod    # 0-1 Period
      attr_accessor :occurredDateTime  # 0-1 dateTime
      attr_accessor :recorded          # 1-1 instant
      attr_accessor :outcome           # 0-1 AuditEvent::Outcome
      attr_accessor :authorization     # 0-* [ CodeableConcept ]
      attr_accessor :basedOn           # 0-* [ Reference(CarePlan|DeviceRequest|ImmunizationRecommendation|MedicationRequest|NutritionOrder|ServiceRequest|Task) ]
      attr_accessor :patient           # 0-1 Reference(Patient)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :agent             # 1-* [ AuditEvent::Agent ]
      attr_accessor :source            # 1-1 AuditEvent::Source
      attr_accessor :entity            # 0-* [ AuditEvent::Entity ]

      def resourceType
        'AuditEvent'
      end
    end
  end
end