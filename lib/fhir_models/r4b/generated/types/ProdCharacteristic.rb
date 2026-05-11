module FHIR
  module R4B
    class ProdCharacteristic < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ProdCharacteristic.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ProdCharacteristic.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'ProdCharacteristic.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'height' => {'path'=>'ProdCharacteristic.height', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'width' => {'path'=>'ProdCharacteristic.width', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'depth' => {'path'=>'ProdCharacteristic.depth', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'weight' => {'path'=>'ProdCharacteristic.weight', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'nominalVolume' => {'path'=>'ProdCharacteristic.nominalVolume', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'externalDiameter' => {'path'=>'ProdCharacteristic.externalDiameter', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'shape' => {'path'=>'ProdCharacteristic.shape', 'type'=>'string', 'min'=>0, 'max'=>1},
        'color' => {'path'=>'ProdCharacteristic.color', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'imprint' => {'path'=>'ProdCharacteristic.imprint', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'image' => {'path'=>'ProdCharacteristic.image', 'type'=>'Attachment', 'min'=>0, 'max'=>Float::INFINITY},
        'scoring' => {'path'=>'ProdCharacteristic.scoring', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :height            # 0-1 Quantity
      attr_accessor :width             # 0-1 Quantity
      attr_accessor :depth             # 0-1 Quantity
      attr_accessor :weight            # 0-1 Quantity
      attr_accessor :nominalVolume     # 0-1 Quantity
      attr_accessor :externalDiameter  # 0-1 Quantity
      attr_accessor :shape             # 0-1 string
      attr_accessor :color             # 0-* [ string ]
      attr_accessor :imprint           # 0-* [ string ]
      attr_accessor :image             # 0-* [ Attachment ]
      attr_accessor :scoring           # 0-1 CodeableConcept
    end
  end
end