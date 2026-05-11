module FHIR
  module R5
    class SampledData < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SampledData.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'SampledData.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'origin' => {'path'=>'SampledData.origin', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
        'interval' => {'path'=>'SampledData.interval', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'intervalUnit' => {'path'=>'SampledData.intervalUnit', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/ucum-units'}},
        'factor' => {'path'=>'SampledData.factor', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'lowerLimit' => {'path'=>'SampledData.lowerLimit', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'upperLimit' => {'path'=>'SampledData.upperLimit', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'dimensions' => {'path'=>'SampledData.dimensions', 'type'=>'positiveInt', 'min'=>1, 'max'=>1},
        'codeMap' => {'path'=>'SampledData.codeMap', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'offsets' => {'path'=>'SampledData.offsets', 'type'=>'string', 'min'=>0, 'max'=>1},
        'data' => {'path'=>'SampledData.data', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :origin       # 1-1 Quantity
      attr_accessor :interval     # 0-1 decimal
      attr_accessor :intervalUnit # 1-1 code
      attr_accessor :factor       # 0-1 decimal
      attr_accessor :lowerLimit   # 0-1 decimal
      attr_accessor :upperLimit   # 0-1 decimal
      attr_accessor :dimensions   # 1-1 positiveInt
      attr_accessor :codeMap      # 0-1 canonical
      attr_accessor :offsets      # 0-1 string
      attr_accessor :data         # 0-1 string
    end
  end
end