module FHIR
  module R4B
    class MarketingStatus < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'MarketingStatus.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'MarketingStatus.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'MarketingStatus.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'country' => {'path'=>'MarketingStatus.country', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'jurisdiction' => {'path'=>'MarketingStatus.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'status' => {'path'=>'MarketingStatus.status', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
        'dateRange' => {'path'=>'MarketingStatus.dateRange', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'restoreDate' => {'path'=>'MarketingStatus.restoreDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :country           # 0-1 CodeableConcept
      attr_accessor :jurisdiction      # 0-1 CodeableConcept
      attr_accessor :status            # 1-1 CodeableConcept
      attr_accessor :dateRange         # 0-1 Period
      attr_accessor :restoreDate       # 0-1 dateTime
    end
  end
end