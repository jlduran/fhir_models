module FHIR
  module R5
    class Coding < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Coding.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Coding.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'system' => {'path'=>'Coding.system', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'version' => {'path'=>'Coding.version', 'type'=>'string', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'Coding.code', 'type'=>'code', 'min'=>0, 'max'=>1},
        'display' => {'path'=>'Coding.display', 'type'=>'string', 'min'=>0, 'max'=>1},
        'userSelected' => {'path'=>'Coding.userSelected', 'type'=>'boolean', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :system       # 0-1 uri
      attr_accessor :version      # 0-1 string
      attr_accessor :code         # 0-1 code
      attr_accessor :display      # 0-1 string
      attr_accessor :userSelected # 0-1 boolean
    end
  end
end