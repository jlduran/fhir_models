module FHIR
  module R5
    class Availability < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'Availability.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'Availability.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'availableTime' => {'path'=>'Availability.availableTime', 'type'=>'Availability::AvailableTime', 'min'=>0, 'max'=>Float::INFINITY},
        'notAvailableTime' => {'path'=>'Availability.notAvailableTime', 'type'=>'Availability::NotAvailableTime', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class AvailableTime < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'AvailableTime.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'AvailableTime.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'daysOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'path'=>'AvailableTime.daysOfWeek', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
          'allDay' => {'path'=>'AvailableTime.allDay', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'availableStartTime' => {'path'=>'AvailableTime.availableStartTime', 'type'=>'time', 'min'=>0, 'max'=>1},
          'availableEndTime' => {'path'=>'AvailableTime.availableEndTime', 'type'=>'time', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :daysOfWeek         # 0-* [ code ]
        attr_accessor :allDay             # 0-1 boolean
        attr_accessor :availableStartTime # 0-1 time
        attr_accessor :availableEndTime   # 0-1 time
      end

      class NotAvailableTime < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'NotAvailableTime.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'NotAvailableTime.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'path'=>'NotAvailableTime.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'during' => {'path'=>'NotAvailableTime.during', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id          # 0-1 string
        attr_accessor :extension   # 0-* [ Extension ]
        attr_accessor :description # 0-1 string
        attr_accessor :during      # 0-1 Period
      end

      attr_accessor :id               # 0-1 string
      attr_accessor :extension        # 0-* [ Extension ]
      attr_accessor :availableTime    # 0-* [ Availability::AvailableTime ]
      attr_accessor :notAvailableTime # 0-* [ Availability::NotAvailableTime ]
    end
  end
end