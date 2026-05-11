module FHIR
  module R5
    class Timing < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Timing.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Timing.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Timing.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'event' => {'path'=>'Timing.event', 'type'=>'dateTime', 'min'=>0, 'max'=>Float::INFINITY},
        'repeat' => {'path'=>'Timing.repeat', 'type'=>'Timing::Repeat', 'min'=>0, 'max'=>1},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/timing-abbreviation'=>['C'], 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation'=>['BID', 'TID', 'QID', 'AM', 'PM', 'QD', 'QOD', 'Q1H', 'Q2H', 'Q3H', 'Q4H', 'Q6H', 'Q8H', 'BED', 'WK', 'MO']}, 'path'=>'Timing.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/timing-abbreviation'}}
      }

      class Repeat < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'bounds' => ['Duration', 'Range', 'Period']
        }
        METADATA = {
          'id' => {'path'=>'Repeat.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Repeat.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'boundsDuration' => {'path'=>'Repeat.bounds[x]', 'type'=>'Duration', 'min'=>0, 'max'=>1},
          'boundsRange' => {'path'=>'Repeat.bounds[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'boundsPeriod' => {'path'=>'Repeat.bounds[x]', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'count' => {'path'=>'Repeat.count', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'countMax' => {'path'=>'Repeat.countMax', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'duration' => {'path'=>'Repeat.duration', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'durationMax' => {'path'=>'Repeat.durationMax', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'durationUnit' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['s', 'min', 'h', 'd', 'wk', 'mo', 'a']}, 'path'=>'Repeat.durationUnit', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/units-of-time'}},
          'frequency' => {'path'=>'Repeat.frequency', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'frequencyMax' => {'path'=>'Repeat.frequencyMax', 'type'=>'positiveInt', 'min'=>0, 'max'=>1},
          'period' => {'path'=>'Repeat.period', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'periodMax' => {'path'=>'Repeat.periodMax', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'periodUnit' => {'valid_codes'=>{'http://unitsofmeasure.org'=>['s', 'min', 'h', 'd', 'wk', 'mo', 'a']}, 'path'=>'Repeat.periodUnit', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/units-of-time'}},
          'dayOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'path'=>'Repeat.dayOfWeek', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
          'timeOfDay' => {'path'=>'Repeat.timeOfDay', 'type'=>'time', 'min'=>0, 'max'=>Float::INFINITY},
          'when' => {'valid_codes'=>{'http://hl7.org/fhir/event-timing'=>['MORN', 'MORN.early', 'MORN.late', 'NOON', 'AFT', 'AFT.early', 'AFT.late', 'EVE', 'EVE.early', 'EVE.late', 'NIGHT', 'PHS', 'IMD'], 'http://terminology.hl7.org/CodeSystem/v3-TimingEvent'=>['HS', 'WAKE', 'C', 'CM', 'CD', 'CV', 'AC', 'ACM', 'ACD', 'ACV', 'PC', 'PCM', 'PCD', 'PCV']}, 'path'=>'Repeat.when', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-timing'}},
          'offset' => {'path'=>'Repeat.offset', 'type'=>'unsignedInt', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id             # 0-1 string
        attr_accessor :extension      # 0-* [ Extension ]
        attr_accessor :boundsDuration # 0-1 Duration
        attr_accessor :boundsRange    # 0-1 Range
        attr_accessor :boundsPeriod   # 0-1 Period
        attr_accessor :count          # 0-1 positiveInt
        attr_accessor :countMax       # 0-1 positiveInt
        attr_accessor :duration       # 0-1 decimal
        attr_accessor :durationMax    # 0-1 decimal
        attr_accessor :durationUnit   # 0-1 code
        attr_accessor :frequency      # 0-1 positiveInt
        attr_accessor :frequencyMax   # 0-1 positiveInt
        attr_accessor :period         # 0-1 decimal
        attr_accessor :periodMax      # 0-1 decimal
        attr_accessor :periodUnit     # 0-1 code
        attr_accessor :dayOfWeek      # 0-* [ code ]
        attr_accessor :timeOfDay      # 0-* [ time ]
        attr_accessor :when           # 0-* [ code ]
        attr_accessor :offset         # 0-1 unsignedInt
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :event             # 0-* [ dateTime ]
      attr_accessor :repeat            # 0-1 Timing::Repeat
      attr_accessor :code              # 0-1 CodeableConcept
    end
  end
end