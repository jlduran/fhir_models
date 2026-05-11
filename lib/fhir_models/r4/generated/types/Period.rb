module FHIR
  module R4
    class Period < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Period.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Period.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'start' => {'path'=>'Period.start', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'end' => {'path'=>'Period.end', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :start     # 0-1 dateTime
      attr_accessor :end       # 0-1 dateTime
    end
  end
  Period = FHIR::R4::Period
end