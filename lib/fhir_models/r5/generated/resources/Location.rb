module FHIR
  module R5
    class Location < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'characteristic', 'endpoint', 'identifier', 'name', 'near', 'operational-status', 'organization', 'partof', 'status', 'type']
      METADATA = {
        'id' => {'path'=>'Location.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Location.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Location.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Location.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Location.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Location.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Location.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Location.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Location.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/location-status'=>['active', 'suspended', 'inactive']}, 'path'=>'Location.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/location-status'}},
        'operationalStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0116'=>['C', 'H', 'O', 'U', 'K', 'I']}, 'path'=>'Location.operationalStatus', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0116'}},
        'name' => {'path'=>'Location.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'alias' => {'path'=>'Location.alias', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'Location.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'mode' => {'valid_codes'=>{'http://hl7.org/fhir/location-mode'=>['instance', 'kind']}, 'path'=>'Location.mode', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/location-mode'}},
        'type' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-RoleCode'=>['_DedicatedServiceDeliveryLocationRoleType', '_DedicatedClinicalLocationRoleType', 'DX', 'CVDX', 'CATH', 'ECHO', 'GIDX', 'ENDOS', 'RADDX', 'RADO', 'RNEU', 'HOSP', 'CHR', 'GACH', 'MHSP', 'PSYCHF', 'RH', 'RHAT', 'RHII', 'RHMAD', 'RHPI', 'RHPIH', 'RHPIMS', 'RHPIVS', 'RHYAD', 'HU', 'BMTU', 'CCU', 'CHEST', 'EPIL', 'ER', 'ETU', 'HD', 'HLAB', 'INLAB', 'OUTLAB', 'HRAD', 'HUSCS', 'ICU', 'PEDICU', 'PEDNICU', 'INPHARM', 'MBL', 'NCCS', 'NS', 'OUTPHARM', 'PEDU', 'PHU', 'RHU', 'SLEEP', 'NCCF', 'SNF', 'OF', 'ALL', 'AMPUT', 'BMTC', 'BREAST', 'CANC', 'CAPC', 'CARD', 'PEDCARD', 'COAG', 'CRS', 'DERM', 'ENDO', 'PEDE', 'ENT', 'FMC', 'GI', 'PEDGI', 'GIM', 'GYN', 'HEM', 'PEDHEM', 'HTN', 'IEC', 'INFD', 'PEDID', 'INV', 'LYMPH', 'MGEN', 'NEPH', 'PEDNEPH', 'NEUR', 'OB', 'OMS', 'ONCL', 'PEDHO', 'OPH', 'OPTC', 'ORTHO', 'HAND', 'PAINCL', 'PC', 'PEDC', 'PEDRHEUM', 'POD', 'PREV', 'PROCTO', 'PROFF', 'PROS', 'PSI', 'PSY', 'RHEUM', 'SPMED', 'SU', 'PLS', 'URO', 'TR', 'TRAVEL', 'WND', 'RTF', 'PRC', 'SURF', '_DedicatedNonClinicalLocationRoleType', 'DADDR', 'MOBL', 'AMB', 'PHARM', '_IncidentalServiceDeliveryLocationRoleType', 'ACC', 'COMM', 'CSC', 'PTRES', 'SCHOOL', 'UPC', 'WORK']}, 'path'=>'Location.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType'}},
        'contact' => {'path'=>'Location.contact', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'path'=>'Location.address', 'type'=>'Address', 'min'=>0, 'max'=>1},
        'form' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/location-physical-type'=>['si', 'bu', 'wi', 'wa', 'lvl', 'co', 'ro', 'bd', 've', 'ho', 'ca', 'rd', 'area', 'jdn', 'vi']}, 'path'=>'Location.form', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/location-form'}},
        'position' => {'path'=>'Location.position', 'type'=>'Location::Position', 'min'=>0, 'max'=>1},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Location.managingOrganization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Location.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'characteristic' => {'valid_codes'=>{'http://hl7.org/fhir/location-characteristic'=>['wheelchair', 'has-translation', 'has-oxy-nitro', 'has-neg-press', 'has-iso-ward', 'has-icu']}, 'path'=>'Location.characteristic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/location-characteristic'}},
        'hoursOfOperation' => {'path'=>'Location.hoursOfOperation', 'type'=>'Availability', 'min'=>0, 'max'=>Float::INFINITY},
        'virtualService' => {'path'=>'Location.virtualService', 'type'=>'VirtualServiceDetail', 'min'=>0, 'max'=>Float::INFINITY},
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

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-* [ Identifier ]
      attr_accessor :status               # 0-1 code
      attr_accessor :operationalStatus    # 0-1 Coding
      attr_accessor :name                 # 0-1 string
      attr_accessor :alias                # 0-* [ string ]
      attr_accessor :description          # 0-1 markdown
      attr_accessor :mode                 # 0-1 code
      attr_accessor :type                 # 0-* [ CodeableConcept ]
      attr_accessor :contact              # 0-* [ ExtendedContactDetail ]
      attr_accessor :address              # 0-1 Address
      attr_accessor :form                 # 0-1 CodeableConcept
      attr_accessor :position             # 0-1 Location::Position
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :partOf               # 0-1 Reference(Location)
      attr_accessor :characteristic       # 0-* [ CodeableConcept ]
      attr_accessor :hoursOfOperation     # 0-* [ Availability ]
      attr_accessor :virtualService       # 0-* [ VirtualServiceDetail ]
      attr_accessor :endpoint             # 0-* [ Reference(Endpoint) ]

      def resourceType
        'Location'
      end
    end
  end
end