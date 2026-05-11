module FHIR
  module R5
    class BiologicallyDerivedProduct < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['biological-source-event', 'code', 'collector', 'identifier', 'product-category', 'product-status', 'request', 'serial-number']
      METADATA = {
        'id' => {'path'=>'BiologicallyDerivedProduct.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'BiologicallyDerivedProduct.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'BiologicallyDerivedProduct.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'BiologicallyDerivedProduct.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'BiologicallyDerivedProduct.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'BiologicallyDerivedProduct.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'BiologicallyDerivedProduct.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'BiologicallyDerivedProduct.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'productCategory' => {'valid_codes'=>{'http://hl7.org/fhir/product-category'=>['organ', 'tissue', 'fluid', 'cells', 'biologicalAgent']}, 'path'=>'BiologicallyDerivedProduct.productCategory', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/product-category'}},
        'productCode' => {'valid_codes'=>{'http://hl7.org/fhir/biologicallyderived-productcodes'=>['e0398', 's1128', 's1194', 's1195', 's1310', 's1398', 's2598', 'e4377', 't1396']}, 'path'=>'BiologicallyDerivedProduct.productCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderived-productcodes'}},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct'], 'path'=>'BiologicallyDerivedProduct.parent', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'request' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/ServiceRequest'], 'path'=>'BiologicallyDerivedProduct.request', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'BiologicallyDerivedProduct.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'biologicalSourceEvent' => {'path'=>'BiologicallyDerivedProduct.biologicalSourceEvent', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'processingFacility' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'BiologicallyDerivedProduct.processingFacility', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'division' => {'path'=>'BiologicallyDerivedProduct.division', 'type'=>'string', 'min'=>0, 'max'=>1},
        'productStatus' => {'valid_codes'=>{'http://hl7.org/fhir/biologicallyderived-product-status'=>['available', 'unavailable']}, 'path'=>'BiologicallyDerivedProduct.productStatus', 'type'=>'Coding', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderived-product-status'}},
        'expirationDate' => {'path'=>'BiologicallyDerivedProduct.expirationDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'collection' => {'path'=>'BiologicallyDerivedProduct.collection', 'type'=>'BiologicallyDerivedProduct::Collection', 'min'=>0, 'max'=>1},
        'storageTempRequirements' => {'path'=>'BiologicallyDerivedProduct.storageTempRequirements', 'type'=>'Range', 'min'=>0, 'max'=>1},
        'property' => {'path'=>'BiologicallyDerivedProduct.property', 'type'=>'BiologicallyDerivedProduct::Property', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Collection < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'collected' => ['dateTime', 'Period']
        }
        METADATA = {
          'id' => {'path'=>'Collection.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Collection.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Collection.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'collector' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Collection.collector', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Collection.source', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'collectedDateTime' => {'path'=>'Collection.collected[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'collectedPeriod' => {'path'=>'Collection.collected[x]', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :collector         # 0-1 Reference(Practitioner|PractitionerRole)
        attr_accessor :source            # 0-1 Reference(Patient|Organization)
        attr_accessor :collectedDateTime # 0-1 dateTime
        attr_accessor :collectedPeriod   # 0-1 Period
      end

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['boolean', 'integer', 'CodeableConcept', 'Period', 'Quantity', 'Range', 'Ratio', 'string', 'Attachment']
        }
        METADATA = {
          'id' => {'path'=>'Property.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Property.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Property.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/biologicallyderived-product-property-type-codes'=>['collectiontype', 'aborhd', 'singleeuropeancode', 'redcellantigen']}, 'path'=>'Property.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/biologicallyderived-product-property-type-codes'}},
          'valueBoolean' => {'path'=>'Property.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Property.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Property.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valuePeriod' => {'path'=>'Property.value[x]', 'type'=>'Period', 'min'=>1, 'max'=>1},
          'valueQuantity' => {'path'=>'Property.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Property.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueRatio' => {'path'=>'Property.value[x]', 'type'=>'Ratio', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Property.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Property.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :valueInteger         # 1-1 integer
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valuePeriod          # 1-1 Period
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueRange           # 1-1 Range
        attr_accessor :valueRatio           # 1-1 Ratio
        attr_accessor :valueString          # 1-1 string
        attr_accessor :valueAttachment      # 1-1 Attachment
      end

      attr_accessor :id                      # 0-1 id
      attr_accessor :meta                    # 0-1 Meta
      attr_accessor :implicitRules           # 0-1 uri
      attr_accessor :language                # 0-1 code
      attr_accessor :text                    # 0-1 Narrative
      attr_accessor :contained               # 0-* [ Resource ]
      attr_accessor :extension               # 0-* [ Extension ]
      attr_accessor :modifierExtension       # 0-* [ Extension ]
      attr_accessor :productCategory         # 0-1 Coding
      attr_accessor :productCode             # 0-1 CodeableConcept
      attr_accessor :parent                  # 0-* [ Reference(BiologicallyDerivedProduct) ]
      attr_accessor :request                 # 0-* [ Reference(ServiceRequest) ]
      attr_accessor :identifier              # 0-* [ Identifier ]
      attr_accessor :biologicalSourceEvent   # 0-1 Identifier
      attr_accessor :processingFacility      # 0-* [ Reference(Organization) ]
      attr_accessor :division                # 0-1 string
      attr_accessor :productStatus           # 0-1 Coding
      attr_accessor :expirationDate          # 0-1 dateTime
      attr_accessor :collection              # 0-1 BiologicallyDerivedProduct::Collection
      attr_accessor :storageTempRequirements # 0-1 Range
      attr_accessor :property                # 0-* [ BiologicallyDerivedProduct::Property ]

      def resourceType
        'BiologicallyDerivedProduct'
      end
    end
  end
end