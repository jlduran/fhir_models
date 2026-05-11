module FHIR
  module R5
    class SupplyRequest < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'occurrence' => ['dateTime', 'Period', 'Timing']
      }
      SEARCH_PARAMS = ['category', 'date', 'identifier', 'patient', 'requester', 'status', 'subject', 'supplier']
      METADATA = {
        'id' => {'path'=>'SupplyRequest.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SupplyRequest.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SupplyRequest.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'SupplyRequest.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'SupplyRequest.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SupplyRequest.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SupplyRequest.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SupplyRequest.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'SupplyRequest.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/supplyrequest-status'=>['draft', 'active', 'suspended', 'cancelled', 'completed', 'entered-in-error', 'unknown']}, 'path'=>'SupplyRequest.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-status'}},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'path'=>'SupplyRequest.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'category' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/supply-kind'=>['central', 'nonstock']}, 'path'=>'SupplyRequest.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/supplyrequest-kind'}},
        'priority' => {'valid_codes'=>{'http://hl7.org/fhir/request-priority'=>['routine', 'urgent', 'asap', 'stat']}, 'path'=>'SupplyRequest.priority', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/request-priority'}},
        'deliverFor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'SupplyRequest.deliverFor', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'item' => {'path'=>'SupplyRequest.item', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
        'quantity' => {'path'=>'SupplyRequest.quantity', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
        'parameter' => {'path'=>'SupplyRequest.parameter', 'type'=>'SupplyRequest::Parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'occurrenceDateTime' => {'path'=>'SupplyRequest.occurrence[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'occurrencePeriod' => {'path'=>'SupplyRequest.occurrence[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'occurrenceTiming' => {'path'=>'SupplyRequest.occurrence[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'authoredOn' => {'path'=>'SupplyRequest.authoredOn', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/CareTeam'], 'path'=>'SupplyRequest.requester', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'supplier' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'SupplyRequest.supplier', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'reason' => {'path'=>'SupplyRequest.reason', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'deliverFrom' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'SupplyRequest.deliverFrom', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'deliverTo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'SupplyRequest.deliverTo', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      class Parameter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['CodeableConcept', 'Quantity', 'Range', 'boolean']
        }
        METADATA = {
          'id' => {'path'=>'Parameter.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Parameter.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Parameter.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Parameter.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'valueCodeableConcept' => {'path'=>'Parameter.value[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'valueQuantity' => {'path'=>'Parameter.value[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'valueRange' => {'path'=>'Parameter.value[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'valueBoolean' => {'path'=>'Parameter.value[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :code                 # 0-1 CodeableConcept
        attr_accessor :valueCodeableConcept # 0-1 CodeableConcept
        attr_accessor :valueQuantity        # 0-1 Quantity
        attr_accessor :valueRange           # 0-1 Range
        attr_accessor :valueBoolean         # 0-1 boolean
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
      attr_accessor :status             # 0-1 code
      attr_accessor :basedOn            # 0-* [ Reference(Resource) ]
      attr_accessor :category           # 0-1 CodeableConcept
      attr_accessor :priority           # 0-1 code
      attr_accessor :deliverFor         # 0-1 Reference(Patient)
      attr_accessor :item               # 1-1 CodeableReference
      attr_accessor :quantity           # 1-1 Quantity
      attr_accessor :parameter          # 0-* [ SupplyRequest::Parameter ]
      attr_accessor :occurrenceDateTime # 0-1 dateTime
      attr_accessor :occurrencePeriod   # 0-1 Period
      attr_accessor :occurrenceTiming   # 0-1 Timing
      attr_accessor :authoredOn         # 0-1 dateTime
      attr_accessor :requester          # 0-1 Reference(Practitioner|PractitionerRole|Organization|Patient|RelatedPerson|Device|CareTeam)
      attr_accessor :supplier           # 0-* [ Reference(Organization|HealthcareService) ]
      attr_accessor :reason             # 0-* [ CodeableReference ]
      attr_accessor :deliverFrom        # 0-1 Reference(Organization|Location)
      attr_accessor :deliverTo          # 0-1 Reference(Organization|Location|Patient|RelatedPerson)

      def resourceType
        'SupplyRequest'
      end
    end
  end
end