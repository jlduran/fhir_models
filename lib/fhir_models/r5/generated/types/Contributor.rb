module FHIR
  module R5
    class Contributor < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Contributor.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Contributor.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/contributor-type'=>['author', 'editor', 'reviewer', 'endorser']}, 'path'=>'Contributor.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contributor-type'}},
        'name' => {'path'=>'Contributor.name', 'type'=>'string', 'min'=>1, 'max'=>1},
        'contact' => {'path'=>'Contributor.contact', 'type'=>'ContactDetail', 'min'=>0, 'max'=>Float::INFINITY}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :type      # 1-1 code
      attr_accessor :name      # 1-1 string
      attr_accessor :contact   # 0-* [ ContactDetail ]
    end
  end
end