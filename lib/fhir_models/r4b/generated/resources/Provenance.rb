module FHIR
  module R4B
    class Provenance < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurred' => ['Period', 'dateTime']
      }
      SEARCH_PARAMS = ['agent', 'agent-role', 'agent-type', 'entity', 'location', 'patient', 'recorded', 'signature-type', 'target', 'when']
      METADATA = {
        'id' => {'path'=>'Provenance.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Provenance.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Provenance.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Provenance.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Provenance.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Provenance.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Provenance.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Provenance.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'target' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Provenance.target', 'type'=>'Reference', 'min'=>1, 'max'=>Float::INFINITY},
        'occurredPeriod' => {'path'=>'Provenance.occurred[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'occurredDateTime' => {'path'=>'Provenance.occurred[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'recorded' => {'path'=>'Provenance.recorded', 'type'=>'instant', 'min'=>1, 'max'=>1},
        'policy' => {'path'=>'Provenance.policy', 'type'=>'uri', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Provenance.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reason' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-ActReason'=>['HMARKT', 'HOPERAT', 'CAREMGT', 'DONAT', 'FRAUD', 'GOV', 'HACCRED', 'HCOMPL', 'HDECD', 'HDIRECT', 'HDM', 'HLEGAL', 'HOUTCOMS', 'HPRGRP', 'HQUALIMP', 'HSYSADMIN', 'LABELING', 'METAMGT', 'MEMADMIN', 'MILCDM', 'PATADMIN', 'PATSFTY', 'PERFMSR', 'RECORDMGT', 'SYSDEV', 'HTEST', 'TRAIN', 'HPAYMT', 'CLMATTCH', 'COVAUTH', 'COVERAGE', 'ELIGDTRM', 'ELIGVER', 'ENROLLM', 'MILDCRG', 'REMITADV', 'HRESCH', 'BIORCH', 'CLINTRCH', 'CLINTRCHNPC', 'CLINTRCHPC', 'PRECLINTRCH', 'DSRCH', 'POARCH', 'TRANSRCH', 'PATRQT', 'FAMRQT', 'PWATRNY', 'SUPNWK', 'PUBHLTH', 'DISASTER', 'THREAT', 'TREAT', 'CLINTRL', 'COC', 'ETREAT', 'BTG', 'ERTREAT', 'POPHLTH']}, 'path'=>'Provenance.reason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse'}},
        'activity' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion'=>['LA'], 'http://terminology.hl7.org/CodeSystem/v3-ActCode'=>['ANONY', 'DEID', 'MASK', 'LABEL', 'PSEUD'], 'http://terminology.hl7.org/CodeSystem/v3-DataOperation'=>['CREATE', 'DELETE', 'UPDATE', 'APPEND', 'NULLIFY'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['PART', '_ParticipationAncillary', 'ADM', 'ATND', 'CALLBCK', 'CON', 'DIS', 'ESC', 'REF', '_ParticipationInformationGenerator', 'AUT', 'INF', 'TRANS', 'ENT', 'WIT', 'CST', 'DIR', 'ALY', 'BBY', 'CAT', 'CSM', 'TPA', 'DEV', 'NRD', 'RDV', 'DON', 'EXPAGNT', 'EXPART', 'EXPTRGT', 'EXSRC', 'PRD', 'SBJ', 'SPC', 'IND', 'BEN', 'CAGNT', 'COV', 'GUAR', 'HLD', 'RCT', 'RCV', 'IRCP', 'NOT', 'PRCP', 'REFB', 'REFT', 'TRC', 'LOC', 'DST', 'ELOC', 'ORG', 'RML', 'VIA', 'PRF', 'DIST', 'PPRF', 'SPRF', 'RESP', 'VRF', 'AUTHEN', 'LA']}, 'path'=>'Provenance.activity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-activity-type'}},
        'agent' => {'path'=>'Provenance.agent', 'type'=>'Provenance::Agent', 'min'=>1, 'max'=>Float::INFINITY},
        'entity' => {'path'=>'Provenance.entity', 'type'=>'Provenance::Entity', 'min'=>0, 'max'=>Float::INFINITY},
        'signature' => {'path'=>'Provenance.signature', 'type'=>'Signature', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Agent < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Agent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Agent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Agent.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/provenance-participant-type'=>['enterer', 'performer', 'author', 'verifier', 'legal', 'attester', 'informant', 'custodian', 'assembler', 'composer']}, 'path'=>'Agent.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-agent-type'}},
          'role' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contractsignertypecodes'=>['AMENDER', 'COAUTH', 'CONT', 'EVTWIT', 'PRIMAUTH', 'REVIEWER', 'SOURCE', 'TRANS', 'VALID', 'VERF'], 'http://terminology.hl7.org/CodeSystem/v3-RoleClass'=>['AFFL', 'AGNT', 'ASSIGNED', 'CLAIM', 'COVPTY', 'DEPEN', 'ECON', 'EMP', 'GUARD', 'INVSBJ', 'NAMED', 'NOK', 'PAT', 'PROV', 'NOT'], 'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['CLASSIFIER', 'CONSENTER', 'CONSWIT', 'COPART', 'DECLASSIFIER', 'DELEGATEE', 'DELEGATOR', 'DOWNGRDER', 'DPOWATT', 'EXCEST', 'GRANTEE', 'GRANTOR', 'GT', 'GUADLTM', 'HPOWATT', 'INTPRTER', 'POWATT', 'RESPRSN', 'SPOWATT', '_CitizenRoleType', 'CAS', 'CASM', 'CN', 'CNRP', 'CNRPM', 'CPCA', 'CRP', 'CRPM'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction'=>['AUCG', 'AULR', 'AUTM', 'AUWA', 'PROMSK'], 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType'=>['AUT', 'CST', 'INF', 'IRCP', 'LA', 'TRC', 'WIT'], 'http://terminology.hl7.org/CodeSystem/extra-security-role-type'=>['authserver', 'datacollector', 'dataprocessor', 'datasubject', 'humanuser'], 'http://dicom.nema.org/resources/ontology/DCM'=>['110150', '110151', '110152', '110153', '110154', '110155']}, 'path'=>'Agent.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/security-role-type'}},
          'who' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Agent.who', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'onBehalfOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Agent.onBehalfOf', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :role              # 0-* [ CodeableConcept ]
        attr_accessor :who               # 1-1 Reference(Practitioner|PractitionerRole|RelatedPerson|Patient|Device|Organization)
        attr_accessor :onBehalfOf        # 0-1 Reference(Practitioner|PractitionerRole|RelatedPerson|Patient|Device|Organization)
      end

      class Entity < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Entity.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Entity.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Entity.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'valid_codes'=>{'http://hl7.org/fhir/provenance-entity-role'=>['derivation', 'revision', 'quotation', 'source', 'removal']}, 'path'=>'Entity.role', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/provenance-entity-role'}},
          'what' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Entity.what', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'agent' => {'path'=>'Entity.agent', 'type'=>'Provenance::Agent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 1-1 code
        attr_accessor :what              # 1-1 Reference(Resource)
        attr_accessor :agent             # 0-* [ Provenance::Agent ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :target            # 1-* [ Reference(Resource) ]
      attr_accessor :occurredPeriod    # 0-1 Period
      attr_accessor :occurredDateTime  # 0-1 dateTime
      attr_accessor :recorded          # 1-1 instant
      attr_accessor :policy            # 0-* [ uri ]
      attr_accessor :location          # 0-1 Reference(Location)
      attr_accessor :reason            # 0-* [ CodeableConcept ]
      attr_accessor :activity          # 0-1 CodeableConcept
      attr_accessor :agent             # 1-* [ Provenance::Agent ]
      attr_accessor :entity            # 0-* [ Provenance::Entity ]
      attr_accessor :signature         # 0-* [ Signature ]

      def resourceType
        'Provenance'
      end
    end
  end
end