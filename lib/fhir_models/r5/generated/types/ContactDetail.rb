module FHIR
  module R5
    class ContactDetail < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ContactDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ContactDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'ContactDetail.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'telecom' => {'path'=>'ContactDetail.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :name      # 0-1 string
      attr_accessor :telecom   # 0-* [ ContactPoint ]
    end
  end
end