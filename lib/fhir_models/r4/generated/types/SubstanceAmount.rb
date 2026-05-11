module FHIR
  module R4
    class SubstanceAmount < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'amount' => ['Quantity', 'Range', 'string']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubstanceAmount.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'SubstanceAmount.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstanceAmount.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'amountQuantity' => {'path'=>'SubstanceAmount.amount[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'amountRange' => {'path'=>'SubstanceAmount.amount[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'amountString' => {'path'=>'SubstanceAmount.amount[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
        'amountType' => {'path'=>'SubstanceAmount.amountType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'amountText' => {'path'=>'SubstanceAmount.amountText', 'type'=>'string', 'min'=>0, 'max'=>1},
        'referenceRange' => {'path'=>'SubstanceAmount.referenceRange', 'type'=>'SubstanceAmount::ReferenceRange', 'min'=>0, 'max'=>1}
      }

      class ReferenceRange < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ReferenceRange.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ReferenceRange.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'lowLimit' => {'path'=>'ReferenceRange.lowLimit', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'highLimit' => {'path'=>'ReferenceRange.highLimit', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :lowLimit  # 0-1 Quantity
        attr_accessor :highLimit # 0-1 Quantity
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :amountQuantity    # 0-1 Quantity
      attr_accessor :amountRange       # 0-1 Range
      attr_accessor :amountString      # 0-1 string
      attr_accessor :amountType        # 0-1 CodeableConcept
      attr_accessor :amountText        # 0-1 string
      attr_accessor :referenceRange    # 0-1 SubstanceAmount::ReferenceRange
    end
  end
  SubstanceAmount = FHIR::R4::SubstanceAmount
end