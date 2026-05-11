module FHIR
  module R4B
    class PaymentReconciliation < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['created', 'disposition', 'identifier', 'outcome', 'payment-issuer', 'request', 'requestor', 'status']
      METADATA = {
        'id' => {'path'=>'PaymentReconciliation.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'PaymentReconciliation.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'PaymentReconciliation.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'PaymentReconciliation.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'PaymentReconciliation.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'PaymentReconciliation.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'PaymentReconciliation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'PaymentReconciliation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'PaymentReconciliation.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'PaymentReconciliation.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'period' => {'path'=>'PaymentReconciliation.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'PaymentReconciliation.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'paymentIssuer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentReconciliation.paymentIssuer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Task'], 'path'=>'PaymentReconciliation.request', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'requestor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentReconciliation.requestor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'outcome' => {'valid_codes'=>{'http://hl7.org/fhir/remittance-outcome'=>['queued', 'complete', 'error', 'partial']}, 'path'=>'PaymentReconciliation.outcome', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/remittance-outcome'}},
        'disposition' => {'path'=>'PaymentReconciliation.disposition', 'type'=>'string', 'min'=>0, 'max'=>1},
        'paymentDate' => {'path'=>'PaymentReconciliation.paymentDate', 'type'=>'date', 'min'=>1, 'max'=>1},
        'paymentAmount' => {'path'=>'PaymentReconciliation.paymentAmount', 'type'=>'Money', 'min'=>1, 'max'=>1},
        'paymentIdentifier' => {'path'=>'PaymentReconciliation.paymentIdentifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'detail' => {'path'=>'PaymentReconciliation.detail', 'type'=>'PaymentReconciliation::Detail', 'min'=>0, 'max'=>Float::INFINITY},
        'formCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/forms-codes'=>['1', '2']}, 'path'=>'PaymentReconciliation.formCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/forms'}},
        'processNote' => {'path'=>'PaymentReconciliation.processNote', 'type'=>'PaymentReconciliation::ProcessNote', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Detail < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Detail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Detail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Detail.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Detail.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'predecessor' => {'path'=>'Detail.predecessor', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/payment-type'=>['payment', 'adjustment', 'advance']}, 'path'=>'Detail.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-type'}},
          'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Detail.request', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'submitter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Detail.submitter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'response' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'Detail.response', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'date' => {'path'=>'Detail.date', 'type'=>'date', 'min'=>0, 'max'=>1},
          'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Detail.responsible', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'payee' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Detail.payee', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'amount' => {'path'=>'Detail.amount', 'type'=>'Money', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :predecessor       # 0-1 Identifier
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :request           # 0-1 Reference(Resource)
        attr_accessor :submitter         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :response          # 0-1 Reference(Resource)
        attr_accessor :date              # 0-1 date
        attr_accessor :responsible       # 0-1 Reference(PractitionerRole)
        attr_accessor :payee             # 0-1 Reference(Practitioner|PractitionerRole|Organization)
        attr_accessor :amount            # 0-1 Money
      end

      class ProcessNote < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ProcessNote.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ProcessNote.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ProcessNote.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/note-type'=>['display', 'print', 'printoper']}, 'path'=>'ProcessNote.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/note-type'}},
          'text' => {'path'=>'ProcessNote.text', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :text              # 0-1 string
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :status            # 1-1 code
      attr_accessor :period            # 0-1 Period
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :paymentIssuer     # 0-1 Reference(Organization)
      attr_accessor :request           # 0-1 Reference(Task)
      attr_accessor :requestor         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :outcome           # 0-1 code
      attr_accessor :disposition       # 0-1 string
      attr_accessor :paymentDate       # 1-1 date
      attr_accessor :paymentAmount     # 1-1 Money
      attr_accessor :paymentIdentifier # 0-1 Identifier
      attr_accessor :detail            # 0-* [ PaymentReconciliation::Detail ]
      attr_accessor :formCode          # 0-1 CodeableConcept
      attr_accessor :processNote       # 0-* [ PaymentReconciliation::ProcessNote ]

      def resourceType
        'PaymentReconciliation'
      end
    end
  end
end