module FHIR
  module R5
    class HumanName < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'HumanName.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'HumanName.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/name-use'=>['usual', 'official', 'temp', 'nickname', 'anonymous', 'old', 'maiden']}, 'path'=>'HumanName.use', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/name-use'}},
        'text' => {'path'=>'HumanName.text', 'type'=>'string', 'min'=>0, 'max'=>1},
        'family' => {'path'=>'HumanName.family', 'type'=>'string', 'min'=>0, 'max'=>1},
        'given' => {'path'=>'HumanName.given', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'prefix' => {'path'=>'HumanName.prefix', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'suffix' => {'path'=>'HumanName.suffix', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'period' => {'path'=>'HumanName.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :use       # 0-1 code
      attr_accessor :text      # 0-1 string
      attr_accessor :family    # 0-1 string
      attr_accessor :given     # 0-* [ string ]
      attr_accessor :prefix    # 0-* [ string ]
      attr_accessor :suffix    # 0-* [ string ]
      attr_accessor :period    # 0-1 Period
    end
  end
end