module FHIR
  module R4
    class ContactPoint < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ContactPoint.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ContactPoint.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'system' => {'valid_codes'=>{'http://hl7.org/fhir/contact-point-system'=>['phone', 'fax', 'email', 'pager', 'url', 'sms', 'other']}, 'path'=>'ContactPoint.system', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contact-point-system'}},
        'value' => {'path'=>'ContactPoint.value', 'type'=>'string', 'min'=>0, 'max'=>1},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/contact-point-use'=>['home', 'work', 'temp', 'old', 'mobile']}, 'path'=>'ContactPoint.use', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/contact-point-use'}},
        'rank' => {'path'=>'ContactPoint.rank', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'ContactPoint.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :system    # 0-1 code
      attr_accessor :value     # 0-1 string
      attr_accessor :use       # 0-1 code
      attr_accessor :rank      # 0-1 positiveInt
      attr_accessor :period    # 0-1 Period
    end
  end
  ContactPoint = FHIR::R4::ContactPoint
end