module FHIR
  module R5
    class InventoryReport < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'item', 'item-reference', 'status']
      METADATA = {
        'id' => {'path'=>'InventoryReport.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'InventoryReport.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'InventoryReport.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'InventoryReport.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'InventoryReport.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'InventoryReport.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'InventoryReport.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'InventoryReport.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'InventoryReport.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/inventoryreport-status'=>['draft', 'requested', 'active', 'entered-in-error']}, 'path'=>'InventoryReport.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/inventoryreport-status'}},
        'countType' => {'valid_codes'=>{'http://hl7.org/fhir/inventoryreport-counttype'=>['snapshot', 'difference']}, 'path'=>'InventoryReport.countType', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/inventoryreport-counttype'}},
        'operationType' => {'path'=>'InventoryReport.operationType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'operationTypeReason' => {'path'=>'InventoryReport.operationTypeReason', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'reportedDateTime' => {'path'=>'InventoryReport.reportedDateTime', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'reporter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'InventoryReport.reporter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'reportingPeriod' => {'path'=>'InventoryReport.reportingPeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'inventoryListing' => {'path'=>'InventoryReport.inventoryListing', 'type'=>'InventoryReport::InventoryListing', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'InventoryReport.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class InventoryListing < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'InventoryListing.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'InventoryListing.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'InventoryListing.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'InventoryListing.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'itemStatus' => {'path'=>'InventoryListing.itemStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'countingDateTime' => {'path'=>'InventoryListing.countingDateTime', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'item' => {'path'=>'InventoryListing.item', 'type'=>'InventoryReport::InventoryListing::Item', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Item < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Item.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Item.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Item.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'category' => {'path'=>'Item.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'quantity' => {'path'=>'Item.quantity', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
            'item' => {'path'=>'Item.item', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :category          # 0-1 CodeableConcept
          attr_accessor :quantity          # 1-1 Quantity
          attr_accessor :item              # 1-1 CodeableReference
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :location          # 0-1 Reference(Location)
        attr_accessor :itemStatus        # 0-1 CodeableConcept
        attr_accessor :countingDateTime  # 0-1 dateTime
        attr_accessor :item              # 0-* [ InventoryReport::InventoryListing::Item ]
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
      attr_accessor :countType           # 1-1 code
      attr_accessor :operationType       # 0-1 CodeableConcept
      attr_accessor :operationTypeReason # 0-1 CodeableConcept
      attr_accessor :reportedDateTime    # 1-1 dateTime
      attr_accessor :reporter            # 0-1 Reference(Practitioner|Patient|RelatedPerson|Device)
      attr_accessor :reportingPeriod     # 0-1 Period
      attr_accessor :inventoryListing    # 0-* [ InventoryReport::InventoryListing ]
      attr_accessor :note                # 0-* [ Annotation ]

      def resourceType
        'InventoryReport'
      end
    end
  end
end