module FHIR
  module R4
    class Identifier < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Identifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Identifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'use' => {'valid_codes'=>{'http://hl7.org/fhir/identifier-use'=>['usual', 'official', 'temp', 'secondary', 'old']}, 'path'=>'Identifier.use', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/identifier-use'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0203'=>['DL', 'PPN', 'BRN', 'MR', 'MCN', 'EN', 'TAX', 'NIIP', 'PRN', 'MD', 'DR', 'ACSN', 'UDI', 'SNO', 'SB', 'PLAC', 'FILL', 'JHN']}, 'path'=>'Identifier.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/identifier-type'}},
        'system' => {'path'=>'Identifier.system', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'value' => {'path'=>'Identifier.value', 'type'=>'string', 'min'=>0, 'max'=>1},
        'period' => {'path'=>'Identifier.period', 'type'=>'Period', 'min'=>0, 'max'=>1},
        'assigner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Identifier.assigner', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :use       # 0-1 code
      attr_accessor :type      # 0-1 CodeableConcept
      attr_accessor :system    # 0-1 uri
      attr_accessor :value     # 0-1 string
      attr_accessor :period    # 0-1 Period
      attr_accessor :assigner  # 0-1 Reference(Organization)
    end
  end
  Identifier = FHIR::R4::Identifier
end