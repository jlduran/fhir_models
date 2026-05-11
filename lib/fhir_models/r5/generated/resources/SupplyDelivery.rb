module FHIR
  module R5
    class SupplyDelivery < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period', 'Timing']
      }
      SEARCH_PARAMS = ['identifier', 'patient', 'receiver', 'status', 'supplier']
      METADATA = {
        'id' => {'path'=>'SupplyDelivery.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SupplyDelivery.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SupplyDelivery.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'SupplyDelivery.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'SupplyDelivery.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SupplyDelivery.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SupplyDelivery.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SupplyDelivery.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'SupplyDelivery.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SupplyRequest'], 'path'=>'SupplyDelivery.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SupplyDelivery', 'http://hl7.org/fhir/StructureDefinition/Contract'], 'path'=>'SupplyDelivery.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/supplydelivery-status'=>['in-progress', 'completed', 'abandoned', 'entered-in-error']}, 'path'=>'SupplyDelivery.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-status'}},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'SupplyDelivery.patient', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/supplydelivery-supplyitemtype'=>['medication', 'device', 'biologicallyderivedproduct']}, 'path'=>'SupplyDelivery.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-supplyitemtype'}},
        'suppliedItem' => {'path'=>'SupplyDelivery.suppliedItem', 'type'=>'SupplyDelivery::SuppliedItem', 'min'=>0, 'max'=>Float::INFINITY},
        'occurrenceDateTime' => {'path'=>'SupplyDelivery.occurrence[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'path'=>'SupplyDelivery.occurrence[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'occurrenceTiming' => {'path'=>'SupplyDelivery.occurrence[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'supplier' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'SupplyDelivery.supplier', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'destination' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'SupplyDelivery.destination', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'receiver' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'SupplyDelivery.receiver', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class SuppliedItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'item' => ['CodeableConcept', 'Reference']
        }
        METADATA = {
          'id' => {'path'=>'SuppliedItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'SuppliedItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'SuppliedItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'quantity' => {'path'=>'SuppliedItem.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'itemCodeableConcept' => {'valid_codes'=>{'http://hl7.org/fhir/supplydelivery-supplyitemtype'=>['medication', 'device', 'biologicallyderivedproduct']}, 'path'=>'SuppliedItem.item[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supplydelivery-supplyitemtype'}},
          'itemReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct', 'http://hl7.org/fhir/StructureDefinition/NutritionProduct', 'http://hl7.org/fhir/StructureDefinition/InventoryItem'], 'path'=>'SuppliedItem.item[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :quantity            # 0-1 Quantity
        attr_accessor :itemCodeableConcept # 0-1 CodeableConcept
        attr_accessor :itemReference       # 0-1 Reference(Medication|Substance|Device|BiologicallyDerivedProduct|NutritionProduct|InventoryItem)
      end

      attr_accessor :id                 # 0-1 id
      attr_accessor :meta               # 0-1 Meta
      attr_accessor :implicitRules      # 0-1 uri
      attr_accessor :language           # 0-1 code
      attr_accessor :text               # 0-1 Narrative
      attr_accessor :contained          # 0-* [ Resource ]
      attr_accessor :extension          # 0-* [ Extension ]
      attr_accessor :modifierExtension  # 0-* [ Extension ]
      attr_accessor :identifier         # 0-* [ Identifier ]
      attr_accessor :basedOn            # 0-* [ Reference(SupplyRequest) ]
      attr_accessor :partOf             # 0-* [ Reference(SupplyDelivery|Contract) ]
      attr_accessor :status             # 0-1 code
      attr_accessor :patient            # 0-1 Reference(Patient)
      attr_accessor :type               # 0-1 CodeableConcept
      attr_accessor :suppliedItem       # 0-* [ SupplyDelivery::SuppliedItem ]
      attr_accessor :occurrenceDateTime # 0-1 dateTime
      attr_accessor :occurrencePeriod   # 0-1 Period
      attr_accessor :occurrenceTiming   # 0-1 Timing
      attr_accessor :supplier           # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :destination        # 0-1 Reference(Location)
      attr_accessor :receiver           # 0-* [ Reference(Practitioner|PractitionerRole|Organization) ]

      def resourceType
        'SupplyDelivery'
      end
    end
  end
end