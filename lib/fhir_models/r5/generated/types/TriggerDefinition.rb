module FHIR
  module R5
    class TriggerDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'timing' => ['Timing', 'Reference', 'date', 'dateTime']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'TriggerDefinition.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'TriggerDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/trigger-type'=>['named-event', 'periodic', 'data-changed', 'data-added', 'data-modified', 'data-removed', 'data-accessed', 'data-access-ended']}, 'path'=>'TriggerDefinition.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/trigger-type'}},
        'name' => {'path'=>'TriggerDefinition.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'TriggerDefinition.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'subscriptionTopic' => {'path'=>'TriggerDefinition.subscriptionTopic', 'type'=>'canonical', 'min'=>0, 'max'=>1},
        'timingTiming' => {'path'=>'TriggerDefinition.timing[x]', 'type'=>'Timing', 'min'=>0, 'max'=>1},
        'timingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Schedule'], 'path'=>'TriggerDefinition.timing[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'timingDate' => {'path'=>'TriggerDefinition.timing[x]', 'type'=>'date', 'min'=>0, 'max'=>1},
        'timingDateTime' => {'path'=>'TriggerDefinition.timing[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'data' => {'path'=>'TriggerDefinition.data', 'type'=>'DataRequirement', 'min'=>0, 'max'=>Float::INFINITY},
        'condition' => {'path'=>'TriggerDefinition.condition', 'type'=>'Expression', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :type              # 1-1 code
      attr_accessor :name              # 0-1 string
      attr_accessor :code              # 0-1 CodeableConcept
      attr_accessor :subscriptionTopic # 0-1 canonical
      attr_accessor :timingTiming      # 0-1 Timing
      attr_accessor :timingReference   # 0-1 Reference(Schedule)
      attr_accessor :timingDate        # 0-1 date
      attr_accessor :timingDateTime    # 0-1 dateTime
      attr_accessor :data              # 0-* [ DataRequirement ]
      attr_accessor :condition         # 0-1 Expression
    end
  end
end