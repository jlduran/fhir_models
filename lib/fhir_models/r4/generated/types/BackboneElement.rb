module FHIR
  module R4
    class BackboneElement < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'BackboneElement.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'BackboneElement.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'BackboneElement.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
    end
  end
  BackboneElement = FHIR::R4::BackboneElement
end