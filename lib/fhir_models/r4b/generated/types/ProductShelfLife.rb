module FHIR
  module R4B
    class ProductShelfLife < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ProductShelfLife.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ProductShelfLife.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ProductShelfLife.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'ProductShelfLife.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'type' => {'path'=>'ProductShelfLife.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
        'period' => {'path'=>'ProductShelfLife.period', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
        'specialPrecautionsForStorage' => {'path'=>'ProductShelfLife.specialPrecautionsForStorage', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                           # 0-1 string
      attr_accessor :extension                    # 0-* [ Extension ]
      attr_accessor :modifierExtension            # 0-* [ Extension ]
      attr_accessor :identifier                   # 0-1 Identifier
      attr_accessor :type                         # 1-1 CodeableConcept
      attr_accessor :period                       # 1-1 Quantity
      attr_accessor :specialPrecautionsForStorage # 0-* [ CodeableConcept ]
    end
  end
end