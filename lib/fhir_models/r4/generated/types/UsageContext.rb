module FHIR
  module R4
    class UsageContext < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'value' => ['CodeableConcept', 'Quantity', 'Range', 'Reference']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'UsageContext.id', 'type'=>'string', 'min'=>0, 'max'=>1},
        'extension' => {'path'=>'UsageContext.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/usage-context-type'=>['gender', 'age', 'focus', 'user', 'workflow', 'task', 'venue', 'species', 'program']}, 'path'=>'UsageContext.code', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/usage-context-type'}},
        'valueCodeableConcept' => {'path'=>'UsageContext.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/use-context'}},
        'valueQuantity' => {'path'=>'UsageContext.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
        'valueRange' => {'path'=>'UsageContext.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
        'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/PlanDefinition', 'http://hl7.org/fhir/StructureDefinition/ResearchStudy', 'http://hl7.org/fhir/StructureDefinition/InsurancePlan', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Location', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'UsageContext.value[x]', 'type'=>'Reference', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                   # 0-1 string
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :code                 # 1-1 Coding
      attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
      attr_accessor :valueQuantity        # 1-1 Quantity
      attr_accessor :valueRange           # 1-1 Range
      attr_accessor :valueReference       # 1-1 Reference(PlanDefinition|ResearchStudy|InsurancePlan|HealthcareService|Group|Location|Organization)
    end
  end
  UsageContext = FHIR::R4::UsageContext
end