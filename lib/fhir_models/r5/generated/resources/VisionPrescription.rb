module FHIR
  module R5
    class VisionPrescription < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['datewritten', 'encounter', 'identifier', 'patient', 'prescriber', 'status']
      METADATA = {
        'id' => {'path'=>'VisionPrescription.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'VisionPrescription.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'VisionPrescription.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'VisionPrescription.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'VisionPrescription.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'VisionPrescription.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'VisionPrescription.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'VisionPrescription.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'VisionPrescription.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/fm-status'=>['active', 'cancelled', 'draft', 'entered-in-error']}, 'path'=>'VisionPrescription.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/fm-status'}},
        'created' => {'path'=>'VisionPrescription.created', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'VisionPrescription.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'encounter' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter'], 'path'=>'VisionPrescription.encounter', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'dateWritten' => {'path'=>'VisionPrescription.dateWritten', 'type'=>'dateTime', 'min'=>1, 'max'=>1},
        'prescriber' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'VisionPrescription.prescriber', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'lensSpecification' => {'path'=>'VisionPrescription.lensSpecification', 'type'=>'VisionPrescription::LensSpecification', 'min'=>1, 'max'=>Float::INFINITY}
      }

      class LensSpecification < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'LensSpecification.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'LensSpecification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'LensSpecification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'product' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct'=>['lens', 'contact']}, 'path'=>'LensSpecification.product', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-product'}},
          'eye' => {'valid_codes'=>{'http://hl7.org/fhir/vision-eye-codes'=>['right', 'left']}, 'path'=>'LensSpecification.eye', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-eye-codes'}},
          'sphere' => {'path'=>'LensSpecification.sphere', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'cylinder' => {'path'=>'LensSpecification.cylinder', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'axis' => {'path'=>'LensSpecification.axis', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'prism' => {'path'=>'LensSpecification.prism', 'type'=>'VisionPrescription::LensSpecification::Prism', 'min'=>0, 'max'=>Float::INFINITY},
          'add' => {'path'=>'LensSpecification.add', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'power' => {'path'=>'LensSpecification.power', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'backCurve' => {'path'=>'LensSpecification.backCurve', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'diameter' => {'path'=>'LensSpecification.diameter', 'type'=>'decimal', 'min'=>0, 'max'=>1},
          'duration' => {'path'=>'LensSpecification.duration', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'color' => {'path'=>'LensSpecification.color', 'type'=>'string', 'min'=>0, 'max'=>1},
          'brand' => {'path'=>'LensSpecification.brand', 'type'=>'string', 'min'=>0, 'max'=>1},
          'note' => {'path'=>'LensSpecification.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Prism < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Prism.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Prism.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Prism.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'amount' => {'path'=>'Prism.amount', 'type'=>'decimal', 'min'=>1, 'max'=>1},
            'base' => {'valid_codes'=>{'http://hl7.org/fhir/vision-base-codes'=>['up', 'down', 'in', 'out']}, 'path'=>'Prism.base', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/vision-base-codes'}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :amount            # 1-1 decimal
          attr_accessor :base              # 1-1 code
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :product           # 1-1 CodeableConcept
        attr_accessor :eye               # 1-1 code
        attr_accessor :sphere            # 0-1 decimal
        attr_accessor :cylinder          # 0-1 decimal
        attr_accessor :axis              # 0-1 integer
        attr_accessor :prism             # 0-* [ VisionPrescription::LensSpecification::Prism ]
        attr_accessor :add               # 0-1 decimal
        attr_accessor :power             # 0-1 decimal
        attr_accessor :backCurve         # 0-1 decimal
        attr_accessor :diameter          # 0-1 decimal
        attr_accessor :duration          # 0-1 Quantity
        attr_accessor :color             # 0-1 string
        attr_accessor :brand             # 0-1 string
        attr_accessor :note              # 0-* [ Annotation ]
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
      attr_accessor :status            # 1-1 code
      attr_accessor :created           # 1-1 dateTime
      attr_accessor :patient           # 1-1 Reference(Patient)
      attr_accessor :encounter         # 0-1 Reference(Encounter)
      attr_accessor :dateWritten       # 1-1 dateTime
      attr_accessor :prescriber        # 1-1 Reference(Practitioner|PractitionerRole)
      attr_accessor :lensSpecification # 1-* [ VisionPrescription::LensSpecification ]

      def resourceType
        'VisionPrescription'
      end
    end
  end
end