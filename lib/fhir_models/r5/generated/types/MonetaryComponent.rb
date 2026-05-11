module FHIR
  module R5
    class MonetaryComponent < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'MonetaryComponent.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'MonetaryComponent.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/price-component-type'=>['base', 'surcharge', 'deduction', 'discount', 'tax', 'informational']}, 'path'=>'MonetaryComponent.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/price-component-type'}},
        'code' => {'path'=>'MonetaryComponent.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
        'factor' => {'path'=>'MonetaryComponent.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'amount' => {'path'=>'MonetaryComponent.amount', 'type'=>'Money', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :type      # 1-1 code
      attr_accessor :code      # 0-1 CodeableConcept
      attr_accessor :factor    # 0-1 decimal
      attr_accessor :amount    # 0-1 Money
    end
  end
end