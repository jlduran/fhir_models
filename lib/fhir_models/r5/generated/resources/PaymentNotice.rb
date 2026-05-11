module FHIR
  module R5
    class PaymentNotice < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['created', 'identifier', 'payment-status', 'reporter', 'request', 'response', 'status']
      METADATA = {
        'id' => {'path'=>'PaymentNotice.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'PaymentNotice.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'PaymentNotice.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'PaymentNotice.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'PaymentNotice.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'PaymentNotice.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'PaymentNotice.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'PaymentNotice.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'PaymentNotice.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'PaymentNotice.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'PaymentNotice.request', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'response' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'PaymentNotice.response', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'created' => {'path'=>'PaymentNotice.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'reporter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentNotice.reporter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'payment' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PaymentReconciliation'], 'path'=>'PaymentNotice.payment', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'paymentDate' => {'path'=>'PaymentNotice.paymentDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'payee' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentNotice.payee', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'PaymentNotice.recipient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'amount' => {'path'=>'PaymentNotice.amount', 'type'=>'Money', 'min'=>1, 'max'=>1},
        'paymentStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/paymentstatus'=>['paid', 'cleared']}, 'path'=>'PaymentNotice.paymentStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/payment-status'}}
      }

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
      attr_accessor :request           # 0-1 Reference(Resource)
      attr_accessor :response          # 0-1 Reference(Resource)
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :reporter          # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :payment           # 0-1 Reference(PaymentReconciliation)
      attr_accessor :paymentDate       # 0-1 date
      attr_accessor :payee             # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :recipient         # 1-1 Reference(Organization)
      attr_accessor :amount            # 1-1 Money
      attr_accessor :paymentStatus     # 0-1 CodeableConcept

      def resourceType
        'PaymentNotice'
      end
    end
  end
end