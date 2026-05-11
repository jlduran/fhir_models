module FHIR
  module R5
    class BiologicallyDerivedProductDispense < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'patient', 'performer', 'product', 'status']
      METADATA = {
        'id' => {'path'=>'BiologicallyDerivedProductDispense.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'BiologicallyDerivedProductDispense.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'BiologicallyDerivedProductDispense.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'BiologicallyDerivedProductDispense.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'BiologicallyDerivedProductDispense.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'BiologicallyDerivedProductDispense.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'BiologicallyDerivedProductDispense.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'BiologicallyDerivedProductDispense.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'BiologicallyDerivedProductDispense.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'basedOn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'BiologicallyDerivedProductDispense.basedOn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'partOf' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProductDispense'], 'path'=>'BiologicallyDerivedProductDispense.partOf', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/biologicallyderivedproductdispense-status'=>['preparation', 'in-progress', 'allocated', 'issued', 'unfulfilled', 'returned', 'entered-in-error', 'unknown']}, 'path'=>'BiologicallyDerivedProductDispense.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-status'}},
        'originRelationshipType' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-origin-relationship'=>['autologous', 'related', 'directed', 'allogeneic', 'xenogenic']}, 'path'=>'BiologicallyDerivedProductDispense.originRelationshipType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-origin-relationship'}},
        'product' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'path'=>'BiologicallyDerivedProductDispense.product', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'patient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient'], 'path'=>'BiologicallyDerivedProductDispense.patient', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'matchStatus' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-match-status'=>['crossmatched', 'selected', 'unmatched', 'least-incompatible']}, 'path'=>'BiologicallyDerivedProductDispense.matchStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-match-status'}},
        'performer' => {'path'=>'BiologicallyDerivedProductDispense.performer', 'type'=>'BiologicallyDerivedProductDispense::Performer', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'BiologicallyDerivedProductDispense.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'quantity' => {'path'=>'BiologicallyDerivedProductDispense.quantity', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
        'preparedDate' => {'path'=>'BiologicallyDerivedProductDispense.preparedDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'whenHandedOver' => {'path'=>'BiologicallyDerivedProductDispense.whenHandedOver', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'destination' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'BiologicallyDerivedProductDispense.destination', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'note' => {'path'=>'BiologicallyDerivedProductDispense.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'usageInstruction' => {'path'=>'BiologicallyDerivedProductDispense.usageInstruction', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      class Performer < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Performer.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Performer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Performer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'function' => {'valid_codes'=>{'http://hl7.org/fhir/CodeSystem/biologicallyderivedproductdispense-performer-function'=>['group-and-type', 'antibody-screen', 'antibody-identification', 'crossmatch', 'release', 'transport', 'receipt']}, 'path'=>'Performer.function', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderivedproductdispense-performer-function'}},
          'actor' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner'], 'path'=>'Performer.actor', 'type'=>'Reference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :function          # 0-1 CodeableConcept
        attr_accessor :actor             # 1-1 Reference(Practitioner)
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
      attr_accessor :basedOn                # 0-* [ Reference(ServiceRequest) ]
      attr_accessor :partOf                 # 0-* [ Reference(BiologicallyDerivedProductDispense) ]
      attr_accessor :status                 # 1-1 code
      attr_accessor :originRelationshipType # 0-1 CodeableConcept
      attr_accessor :product                # 1-1 Reference(BiologicallyDerivedProduct)
      attr_accessor :patient                # 1-1 Reference(Patient)
      attr_accessor :matchStatus            # 0-1 CodeableConcept
      attr_accessor :performer              # 0-* [ BiologicallyDerivedProductDispense::Performer ]
      attr_accessor :location               # 0-1 Reference(Location)
      attr_accessor :quantity               # 0-1 Quantity
      attr_accessor :preparedDate           # 0-1 dateTime
      attr_accessor :whenHandedOver         # 0-1 dateTime
      attr_accessor :destination            # 0-1 Reference(Location)
      attr_accessor :note                   # 0-* [ Annotation ]
      attr_accessor :usageInstruction       # 0-1 string

      def resourceType
        'BiologicallyDerivedProductDispense'
      end
    end
  end
end