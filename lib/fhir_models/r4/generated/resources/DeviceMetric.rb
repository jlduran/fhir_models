module FHIR
  module R4
    class DeviceMetric < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['category', 'identifier', 'parent', 'source', 'type']
      METADATA = {
        'id' => {'path'=>'DeviceMetric.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'DeviceMetric.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'DeviceMetric.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'DeviceMetric.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'DeviceMetric.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'DeviceMetric.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'DeviceMetric.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'DeviceMetric.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'DeviceMetric.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'path'=>'DeviceMetric.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'unit' => {'path'=>'DeviceMetric.unit', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/devicemetric-type'}},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'DeviceMetric.source', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'DeviceMetric.parent', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'operationalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/metric-operational-status'=>['on', 'off', 'standby', 'entered-in-error']}, 'path'=>'DeviceMetric.operationalStatus', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-operational-status'}},
        'color' => {'valid_codes'=>{'http://hl7.org/fhir/metric-color'=>['black', 'red', 'green', 'yellow', 'blue', 'magenta', 'cyan', 'white']}, 'path'=>'DeviceMetric.color', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-color'}},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/metric-category'=>['measurement', 'setting', 'calculation', 'unspecified']}, 'path'=>'DeviceMetric.category', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-category'}},
        'measurementPeriod' => {'path'=>'DeviceMetric.measurementPeriod', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'calibration' => {'path'=>'DeviceMetric.calibration', 'type'=>'DeviceMetric::Calibration', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Calibration < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Calibration.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Calibration.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Calibration.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-type'=>['unspecified', 'offset', 'gain', 'two-point']}, 'path'=>'Calibration.type', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-type'}},
          'state' => {'valid_codes'=>{'http://hl7.org/fhir/metric-calibration-state'=>['not-calibrated', 'calibration-required', 'calibrated', 'unspecified']}, 'path'=>'Calibration.state', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/metric-calibration-state'}},
          'time' => {'path'=>'Calibration.time', 'type'=>'instant', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 code
        attr_accessor :state             # 0-1 code
        attr_accessor :time              # 0-1 instant
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :type              # 1-1 CodeableConcept
      attr_accessor :unit              # 0-1 CodeableConcept
      attr_accessor :source            # 0-1 Reference(Device)
      attr_accessor :parent            # 0-1 Reference(Device)
      attr_accessor :operationalStatus # 0-1 code
      attr_accessor :color             # 0-1 code
      attr_accessor :category          # 1-1 code
      attr_accessor :measurementPeriod # 0-1 Timing
      attr_accessor :calibration       # 0-* [ DeviceMetric::Calibration ]

      def resourceType
        'DeviceMetric'
      end
    end
  end
  DeviceMetric = FHIR::R4::DeviceMetric
end