module FHIR
  module R5
    class ExtendedContactDetail < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'ExtendedContactDetail.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'ExtendedContactDetail.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'purpose' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/contactentity-type'=>['BILL', 'ADMIN', 'HR', 'PAYOR', 'PATINF', 'PRESS']}, 'path'=>'ExtendedContactDetail.purpose', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/contactentity-type'}},
        'name' => {'path'=>'ExtendedContactDetail.name', 'type'=>'HumanName', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'ExtendedContactDetail.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'path'=>'ExtendedContactDetail.address', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'ExtendedContactDetail.organization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'ExtendedContactDetail.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :purpose      # 0-1 CodeableConcept
      attr_accessor :name         # 0-* [ HumanName ]
      attr_accessor :telecom      # 0-* [ ContactPoint ]
      attr_accessor :address      # 0-1 Address
      attr_accessor :organization # 0-1 Reference(Organization)
      attr_accessor :period       # 0-1 Period
    end
  end
end