module FHIR
  module R4B
    class Location < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'endpoint', 'identifier', 'name', 'near', 'operational-status', 'organization', 'partof', 'status', 'type']
      METADATA = {
        'id' => {'path'=>'Location.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Location.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Location.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Location.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Location.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Location.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Location.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Location.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Location.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/location-status'=>['active', 'suspended', 'inactive']}, 'path'=>'Location.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/location-status'}},
        'operationalStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0116'=>['C', 'H', 'O', 'U', 'K', 'I']}, 'path'=>'Location.operationalStatus', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0116'}},
        'name' => {'path'=>'Location.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'Location.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Location.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'mode' => {'valid_codes'=>{'http://hl7.org/fhir/location-mode'=>['instance', 'kind']}, 'path'=>'Location.mode', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/location-mode'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['_DedicatedServiceDeliveryLocationRoleType', '_DedicatedClinicalLocationRoleType', 'DX', 'CVDX', 'CATH', 'ECHO', 'GIDX', 'ENDOS', 'RADDX', 'RADO', 'RNEU', 'HOSP', 'CHR', 'GACH', 'MHSP', 'PSYCHF', 'RH', 'RHAT', 'RHII', 'RHMAD', 'RHPI', 'RHPIH', 'RHPIMS', 'RHPIVS', 'RHYAD', 'HU', 'BMTU', 'CCU', 'CHEST', 'EPIL', 'ER', 'ETU', 'HD', 'HLAB', 'INLAB', 'OUTLAB', 'HRAD', 'HUSCS', 'ICU', 'PEDICU', 'PEDNICU', 'INPHARM', 'MBL', 'NCCS', 'NS', 'OUTPHARM', 'PEDU', 'PHU', 'RHU', 'SLEEP', 'NCCF', 'SNF', 'OF', 'ALL', 'AMPUT', 'BMTC', 'BREAST', 'CANC', 'CAPC', 'CARD', 'PEDCARD', 'COAG', 'CRS', 'DERM', 'ENDO', 'PEDE', 'ENT', 'FMC', 'GI', 'PEDGI', 'GIM', 'GYN', 'HEM', 'PEDHEM', 'HTN', 'IEC', 'INFD', 'PEDID', 'INV', 'LYMPH', 'MGEN', 'NEPH', 'PEDNEPH', 'NEUR', 'OB', 'OMS', 'ONCL', 'PEDHO', 'OPH', 'OPTC', 'ORTHO', 'HAND', 'PAINCL', 'PC', 'PEDC', 'PEDRHEUM', 'POD', 'PREV', 'PROCTO', 'PROFF', 'PROS', 'PSI', 'PSY', 'RHEUM', 'SPMED', 'SU', 'PLS', 'URO', 'TR', 'TRAVEL', 'WND', 'RTF', 'PRC', 'SURF', '_DedicatedNonClinicalLocationRoleType', 'DADDR', 'MOBL', 'AMB', 'PHARM', '_IncidentalServiceDeliveryLocationRoleType', 'ACC', 'COMM', 'CSC', 'PTRES', 'SCHOOL', 'UPC', 'WORK']}, 'path'=>'Location.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType'}},
        'telecom' => {'path'=>'Location.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'path'=>'Location.address', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'physicalType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/location-physical-type'=>['si', 'bu', 'wi', 'wa', 'lvl', 'co', 'ro', 'bd', 've', 'ho', 'ca', 'rd', 'area', 'jdn']}, 'path'=>'Location.physicalType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/location-physical-type'}},
        'position' => {'path'=>'Location.position', 'type'=>'Location::Position', 'min'=>0, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Location.managingOrganization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Location.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'hoursOfOperation' => {'path'=>'Location.hoursOfOperation', 'type'=>'Location::HoursOfOperation', 'min'=>0, 'max'=>Float::INFINITY},
        'availabilityExceptions' => {'path'=>'Location.availabilityExceptions', 'type'=>'string', 'min'=>0, 'max'=>1},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Location.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Position < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Position.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Position.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Position.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'longitude' => {'path'=>'Position.longitude', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'latitude' => {'path'=>'Position.latitude', 'type'=>'decimal', 'min'=>1, 'max'=>1},
          'altitude' => {'path'=>'Position.altitude', 'type'=>'decimal', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :longitude         # 1-1 decimal
        attr_accessor :latitude          # 1-1 decimal
        attr_accessor :altitude          # 0-1 decimal
      end

      class HoursOfOperation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'HoursOfOperation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'HoursOfOperation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'HoursOfOperation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'daysOfWeek' => {'valid_codes'=>{'http://hl7.org/fhir/days-of-week'=>['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']}, 'path'=>'HoursOfOperation.daysOfWeek', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/days-of-week'}},
          'allDay' => {'path'=>'HoursOfOperation.allDay', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'openingTime' => {'path'=>'HoursOfOperation.openingTime', 'type'=>'time', 'min'=>0, 'max'=>1},
          'closingTime' => {'path'=>'HoursOfOperation.closingTime', 'type'=>'time', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :daysOfWeek        # 0-* [ code ]
        attr_accessor :allDay            # 0-1 boolean
        attr_accessor :openingTime       # 0-1 time
        attr_accessor :closingTime       # 0-1 time
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :status                 # 0-1 code
      attr_accessor :operationalStatus      # 0-1 Coding
      attr_accessor :name                   # 0-1 string
      attr_accessor :alias                  # 0-* [ string ]
      attr_accessor :description            # 0-1 string
      attr_accessor :mode                   # 0-1 code
      attr_accessor :type                   # 0-* [ CodeableConcept ]
      attr_accessor :telecom                # 0-* [ ContactPoint ]
      attr_accessor :address                # 0-1 Address
      attr_accessor :physicalType           # 0-1 CodeableConcept
      attr_accessor :position               # 0-1 Location::Position
      attr_accessor :managingOrganization   # 0-1 Reference(Organization)
      attr_accessor :partOf                 # 0-1 Reference(Location)
      attr_accessor :hoursOfOperation       # 0-* [ Location::HoursOfOperation ]
      attr_accessor :availabilityExceptions # 0-1 string
      attr_accessor :endpoint               # 0-* [ Reference(Endpoint) ]

      def resourceType
        'Location'
      end
    end
  end
end