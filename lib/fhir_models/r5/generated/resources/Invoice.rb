module FHIR
  module R5
    class Invoice < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'period' => ['date', 'Period']
      }
      SEARCH_PARAMS = ['account', 'date', 'identifier', 'issuer', 'participant', 'participant-role', 'patient', 'recipient', 'status', 'subject', 'totalgross', 'totalnet', 'type']
      METADATA = {
        'id' => {'path'=>'Invoice.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Invoice.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Invoice.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Invoice.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Invoice.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Invoice.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Invoice.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Invoice.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Invoice.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/invoice-status'=>['draft', 'issued', 'balanced', 'cancelled', 'entered-in-error']}, 'path'=>'Invoice.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/invoice-status'}},
        'cancelledReason' => {'path'=>'Invoice.cancelledReason', 'type'=>'string', 'min'=>0, 'max'=>1},
        'type' => {'path'=>'Invoice.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group'], 'path'=>'Invoice.subject', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Invoice.recipient', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'date' => {'path'=>'Invoice.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'creation' => {'path'=>'Invoice.creation', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'periodDate' => {'path'=>'Invoice.period[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'periodPeriod' => {'path'=>'Invoice.period[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'participant' => {'path'=>'Invoice.participant', 'type'=>'Invoice::Participant', 'min'=>0, 'max'=>Float::INFINITY},
        'issuer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Invoice.issuer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'account' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Account'], 'path'=>'Invoice.account', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'lineItem' => {'path'=>'Invoice.lineItem', 'type'=>'Invoice::LineItem', 'min'=>0, 'max'=>Float::INFINITY},
        'totalPriceComponent' => {'path'=>'Invoice.totalPriceComponent', 'type'=>'MonetaryComponent', 'min'=>0, 'max'=>Float::INFINITY},
        'totalNet' => {'path'=>'Invoice.totalNet', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'totalGross' => {'path'=>'Invoice.totalGross', 'type'=>'Money', 'min'=>0, 'max'=>1},
        'paymentTerms' => {'path'=>'Invoice.paymentTerms', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'Invoice.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Participant < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Participant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Participant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Participant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'path'=>'Participant.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Participant.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner|Organization|Patient|PractitionerRole|Device|RelatedPerson)
      end

      class LineItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'serviced' => ['date', 'Period'],
          'chargeItem' => ['Reference', 'CodeableConcept']
        }
        METADATA = {
          'id' => {'path'=>'LineItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'LineItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'LineItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'sequence' => {'path'=>'LineItem.sequence', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'servicedDate' => {'path'=>'LineItem.serviced[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
          'servicedPeriod' => {'path'=>'LineItem.serviced[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'chargeItemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ChargeItem'], 'path'=>'LineItem.chargeItem[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'chargeItemCodeableConcept' => {'path'=>'LineItem.chargeItem[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'priceComponent' => {'path'=>'LineItem.priceComponent', 'type'=>'MonetaryComponent', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :sequence                  # 0-1 positiveInt
        attr_accessor :servicedDate              # 0-1 date
        attr_accessor :servicedPeriod            # 0-1 Period
        attr_accessor :chargeItemReference       # 1-1 Reference(ChargeItem)
        attr_accessor :chargeItemCodeableConcept # 1-1 CodeableConcept
        attr_accessor :priceComponent            # 0-* [ MonetaryComponent ]
      end

      attr_accessor :id                  # 0-1 id
      attr_accessor :meta                # 0-1 Meta
      attr_accessor :implicitRules       # 0-1 uri
      attr_accessor :language            # 0-1 code
      attr_accessor :text                # 0-1 Narrative
      attr_accessor :contained           # 0-* [ Resource ]
      attr_accessor :extension           # 0-* [ Extension ]
      attr_accessor :modifierExtension   # 0-* [ Extension ]
      attr_accessor :identifier          # 0-* [ Identifier ]
      attr_accessor :status              # 1-1 code
      attr_accessor :cancelledReason     # 0-1 string
      attr_accessor :type                # 0-1 CodeableConcept
      attr_accessor :subject             # 0-1 Reference(Patient|Group)
      attr_accessor :recipient           # 0-1 Reference(Organization|Patient|RelatedPerson)
      attr_accessor :date                # 0-1 dateTime
      attr_accessor :creation            # 0-1 dateTime
      attr_accessor :periodDate          # 0-1 date
      attr_accessor :periodPeriod        # 0-1 Period
      attr_accessor :participant         # 0-* [ Invoice::Participant ]
      attr_accessor :issuer              # 0-1 Reference(Organization)
      attr_accessor :account             # 0-1 Reference(Account)
      attr_accessor :lineItem            # 0-* [ Invoice::LineItem ]
      attr_accessor :totalPriceComponent # 0-* [ MonetaryComponent ]
      attr_accessor :totalNet            # 0-1 Money
      attr_accessor :totalGross          # 0-1 Money
      attr_accessor :paymentTerms        # 0-1 markdown
      attr_accessor :note                # 0-* [ Annotation ]

      def resourceType
        'Invoice'
      end
    end
  end
end