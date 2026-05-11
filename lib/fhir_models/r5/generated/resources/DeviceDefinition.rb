module FHIR
  module R5
    class DeviceDefinition < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['device-name', 'identifier', 'manufacturer', 'organization', 'specification', 'specification-version', 'type']
      METADATA = {
        'id' => {'path'=>'DeviceDefinition.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'DeviceDefinition.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'DeviceDefinition.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'DeviceDefinition.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'DeviceDefinition.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'DeviceDefinition.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'DeviceDefinition.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'DeviceDefinition.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'path'=>'DeviceDefinition.description', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'identifier' => {'path'=>'DeviceDefinition.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'udiDeviceIdentifier' => {'path'=>'DeviceDefinition.udiDeviceIdentifier', 'type'=>'DeviceDefinition::UdiDeviceIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'regulatoryIdentifier' => {'path'=>'DeviceDefinition.regulatoryIdentifier', 'type'=>'DeviceDefinition::RegulatoryIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
        'partNumber' => {'path'=>'DeviceDefinition.partNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'manufacturer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'DeviceDefinition.manufacturer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'deviceName' => {'path'=>'DeviceDefinition.deviceName', 'type'=>'DeviceDefinition::DeviceName', 'min'=>0, 'max'=>Float::INFINITY},
        'modelNumber' => {'path'=>'DeviceDefinition.modelNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'classification' => {'path'=>'DeviceDefinition.classification', 'type'=>'DeviceDefinition::Classification', 'min'=>0, 'max'=>Float::INFINITY},
        'conformsTo' => {'path'=>'DeviceDefinition.conformsTo', 'type'=>'DeviceDefinition::ConformsTo', 'min'=>0, 'max'=>Float::INFINITY},
        'hasPart' => {'path'=>'DeviceDefinition.hasPart', 'type'=>'DeviceDefinition::HasPart', 'min'=>0, 'max'=>Float::INFINITY},
        'packaging' => {'path'=>'DeviceDefinition.packaging', 'type'=>'DeviceDefinition::Packaging', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'path'=>'DeviceDefinition.version', 'type'=>'DeviceDefinition::Version', 'min'=>0, 'max'=>Float::INFINITY},
        'safety' => {'valid_codes'=>{'urn:oid:2.16.840.1.113883.3.26.1.1'=>['C106046', 'C106045', 'C106047', 'C113844', 'C101673', 'C106038']}, 'path'=>'DeviceDefinition.safety', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-safety'}},
        'shelfLifeStorage' => {'path'=>'DeviceDefinition.shelfLifeStorage', 'type'=>'ProductShelfLife', 'min'=>0, 'max'=>Float::INFINITY},
        'languageCode' => {'path'=>'DeviceDefinition.languageCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'path'=>'DeviceDefinition.property', 'type'=>'DeviceDefinition::Property', 'min'=>0, 'max'=>Float::INFINITY},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'DeviceDefinition.owner', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'DeviceDefinition.contact', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'link' => {'path'=>'DeviceDefinition.link', 'type'=>'DeviceDefinition::Link', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'DeviceDefinition.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'material' => {'path'=>'DeviceDefinition.material', 'type'=>'DeviceDefinition::Material', 'min'=>0, 'max'=>Float::INFINITY},
        'productionIdentifierInUDI' => {'valid_codes'=>{'http://hl7.org/fhir/device-productidentifierinudi'=>['lot-number', 'manufactured-date', 'serial-number', 'expiration-date', 'biological-source', 'software-version']}, 'path'=>'DeviceDefinition.productionIdentifierInUDI', 'type'=>'code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-productidentifierinudi'}},
        'guideline' => {'path'=>'DeviceDefinition.guideline', 'type'=>'DeviceDefinition::Guideline', 'min'=>0, 'max'=>1},
        'correctiveAction' => {'path'=>'DeviceDefinition.correctiveAction', 'type'=>'DeviceDefinition::CorrectiveAction', 'min'=>0, 'max'=>1},
        'chargeItem' => {'path'=>'DeviceDefinition.chargeItem', 'type'=>'DeviceDefinition::ChargeItem', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class UdiDeviceIdentifier < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'UdiDeviceIdentifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'UdiDeviceIdentifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'UdiDeviceIdentifier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'deviceIdentifier' => {'path'=>'UdiDeviceIdentifier.deviceIdentifier', 'type'=>'string', 'min'=>1, 'max'=>1},
          'issuer' => {'path'=>'UdiDeviceIdentifier.issuer', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'jurisdiction' => {'path'=>'UdiDeviceIdentifier.jurisdiction', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'marketDistribution' => {'path'=>'UdiDeviceIdentifier.marketDistribution', 'type'=>'DeviceDefinition::UdiDeviceIdentifier::MarketDistribution', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class MarketDistribution < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'MarketDistribution.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'MarketDistribution.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'MarketDistribution.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'marketPeriod' => {'path'=>'MarketDistribution.marketPeriod', 'type'=>'Period', 'min'=>1, 'max'=>1},
            'subJurisdiction' => {'path'=>'MarketDistribution.subJurisdiction', 'type'=>'uri', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :marketPeriod      # 1-1 Period
          attr_accessor :subJurisdiction   # 1-1 uri
        end

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :deviceIdentifier   # 1-1 string
        attr_accessor :issuer             # 1-1 uri
        attr_accessor :jurisdiction       # 1-1 uri
        attr_accessor :marketDistribution # 0-* [ DeviceDefinition::UdiDeviceIdentifier::MarketDistribution ]
      end

      class RegulatoryIdentifier < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'RegulatoryIdentifier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'RegulatoryIdentifier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'RegulatoryIdentifier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/devicedefinition-regulatory-identifier-type'=>['basic', 'master', 'license']}, 'path'=>'RegulatoryIdentifier.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/devicedefinition-regulatory-identifier-type'}},
          'deviceIdentifier' => {'path'=>'RegulatoryIdentifier.deviceIdentifier', 'type'=>'string', 'min'=>1, 'max'=>1},
          'issuer' => {'path'=>'RegulatoryIdentifier.issuer', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'jurisdiction' => {'path'=>'RegulatoryIdentifier.jurisdiction', 'type'=>'uri', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :deviceIdentifier  # 1-1 string
        attr_accessor :issuer            # 1-1 uri
        attr_accessor :jurisdiction      # 1-1 uri
      end

      class DeviceName < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'DeviceName.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'DeviceName.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'DeviceName.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'DeviceName.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/device-nametype'=>['registered-name', 'user-friendly-name', 'patient-reported-name']}, 'path'=>'DeviceName.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-nametype'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :type              # 1-1 code
      end

      class Classification < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Classification.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Classification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Classification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399'], 'urn:oid:2.16.840.1.113883.6.276'=>['38017', '38663', '42347', '46352', '47264', '62163', '62260', '62423', '62414', '64587', '64992']}, 'path'=>'Classification.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-type'}},
          'justification' => {'path'=>'Classification.justification', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 CodeableConcept
        attr_accessor :justification     # 0-* [ RelatedArtifact ]
      end

      class ConformsTo < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ConformsTo.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ConformsTo.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ConformsTo.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'valid_codes'=>{'http://hl7.org/fhir/device-specification-category'=>['communication', 'performance', 'measurement', 'risk-class', 'electrical', 'material', 'exchange']}, 'path'=>'ConformsTo.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-specification-category'}},
          'specification' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399']}, 'path'=>'ConformsTo.specification', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-specification-type'}},
          'version' => {'path'=>'ConformsTo.version', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'path'=>'ConformsTo.source', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :category          # 0-1 CodeableConcept
        attr_accessor :specification     # 1-1 CodeableConcept
        attr_accessor :version           # 0-* [ string ]
        attr_accessor :source            # 0-* [ RelatedArtifact ]
      end

      class HasPart < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'HasPart.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'HasPart.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'HasPart.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DeviceDefinition'], 'path'=>'HasPart.reference', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'count' => {'path'=>'HasPart.count', 'type'=>'integer', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :reference         # 1-1 Reference(DeviceDefinition)
        attr_accessor :count             # 0-1 integer
      end

      class Packaging < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Packaging.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Packaging.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Packaging.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'path'=>'Packaging.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'type' => {'path'=>'Packaging.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'count' => {'path'=>'Packaging.count', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'distributor' => {'path'=>'Packaging.distributor', 'type'=>'DeviceDefinition::Packaging::Distributor', 'min'=>0, 'max'=>Float::INFINITY},
          'udiDeviceIdentifier' => {'path'=>'Packaging.udiDeviceIdentifier', 'type'=>'DeviceDefinition::UdiDeviceIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
          'packaging' => {'path'=>'Packaging.packaging', 'type'=>'DeviceDefinition::Packaging', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Distributor < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Distributor.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Distributor.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Distributor.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'path'=>'Distributor.name', 'type'=>'string', 'min'=>0, 'max'=>1},
            'organizationReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Distributor.organizationReference', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :name                  # 0-1 string
          attr_accessor :organizationReference # 0-* [ Reference(Organization) ]
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :identifier          # 0-1 Identifier
        attr_accessor :type                # 0-1 CodeableConcept
        attr_accessor :count               # 0-1 integer
        attr_accessor :distributor         # 0-* [ DeviceDefinition::Packaging::Distributor ]
        attr_accessor :udiDeviceIdentifier # 0-* [ DeviceDefinition::UdiDeviceIdentifier ]
        attr_accessor :packaging           # 0-* [ DeviceDefinition::Packaging ]
      end

      class Version < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Version.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Version.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Version.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'path'=>'Version.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'component' => {'path'=>'Version.component', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'value' => {'path'=>'Version.value', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :component         # 0-1 Identifier
        attr_accessor :value             # 1-1 string
      end

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'value' => ['Quantity', 'CodeableConcept', 'string', 'boolean', 'integer', 'Range', 'Attachment']
        }
        METADATA = {
          'id' => {'path'=>'Property.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Property.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Property.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399'], 'urn:oid:2.16.840.1.113883.6.276'=>['38017', '38663', '42347', '46352', '47264', '62163', '62260', '62423', '62414', '64587', '64992']}, 'path'=>'Property.type', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-property-type'}},
          'valueQuantity' => {'path'=>'Property.value[x]', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'valueCodeableConcept' => {'path'=>'Property.value[x]', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'valueString' => {'path'=>'Property.value[x]', 'type'=>'string', 'min'=>1, 'max'=>1},
          'valueBoolean' => {'path'=>'Property.value[x]', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'valueInteger' => {'path'=>'Property.value[x]', 'type'=>'integer', 'min'=>1, 'max'=>1},
          'valueRange' => {'path'=>'Property.value[x]', 'type'=>'Range', 'min'=>1, 'max'=>1},
          'valueAttachment' => {'path'=>'Property.value[x]', 'type'=>'Attachment', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                   # 0-1 string
        attr_accessor :extension            # 0-* [ Extension ]
        attr_accessor :modifierExtension    # 0-* [ Extension ]
        attr_accessor :type                 # 1-1 CodeableConcept
        attr_accessor :valueQuantity        # 1-1 Quantity
        attr_accessor :valueCodeableConcept # 1-1 CodeableConcept
        attr_accessor :valueString          # 1-1 string
        attr_accessor :valueBoolean         # 1-1 boolean
        attr_accessor :valueInteger         # 1-1 integer
        attr_accessor :valueRange           # 1-1 Range
        attr_accessor :valueAttachment      # 1-1 Attachment
      end

      class Link < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Link.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Link.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Link.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'relation' => {'valid_codes'=>{'http://hl7.org/fhir/devicedefinition-relationtype'=>['gateway', 'replaces', 'previous']}, 'path'=>'Link.relation', 'type'=>'Coding', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/devicedefinition-relationtype'}},
          'relatedDevice' => {'path'=>'Link.relatedDevice', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relation          # 1-1 Coding
        attr_accessor :relatedDevice     # 1-1 CodeableReference
      end

      class Material < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Material.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Material.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Material.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'substance' => {'path'=>'Material.substance', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1},
          'alternate' => {'path'=>'Material.alternate', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'allergenicIndicator' => {'path'=>'Material.allergenicIndicator', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :substance           # 1-1 CodeableConcept
        attr_accessor :alternate           # 0-1 boolean
        attr_accessor :allergenicIndicator # 0-1 boolean
      end

      class Guideline < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Guideline.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Guideline.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Guideline.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'useContext' => {'path'=>'Guideline.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY},
          'usageInstruction' => {'path'=>'Guideline.usageInstruction', 'type'=>'markdown', 'min'=>0, 'max'=>1},
          'relatedArtifact' => {'path'=>'Guideline.relatedArtifact', 'type'=>'RelatedArtifact', 'min'=>0, 'max'=>Float::INFINITY},
          'indication' => {'path'=>'Guideline.indication', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'contraindication' => {'path'=>'Guideline.contraindication', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'warning' => {'path'=>'Guideline.warning', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'intendedUse' => {'path'=>'Guideline.intendedUse', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :useContext        # 0-* [ UsageContext ]
        attr_accessor :usageInstruction  # 0-1 markdown
        attr_accessor :relatedArtifact   # 0-* [ RelatedArtifact ]
        attr_accessor :indication        # 0-* [ CodeableConcept ]
        attr_accessor :contraindication  # 0-* [ CodeableConcept ]
        attr_accessor :warning           # 0-* [ CodeableConcept ]
        attr_accessor :intendedUse       # 0-1 string
      end

      class CorrectiveAction < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'CorrectiveAction.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'CorrectiveAction.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'CorrectiveAction.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'recall' => {'path'=>'CorrectiveAction.recall', 'type'=>'boolean', 'min'=>1, 'max'=>1},
          'scope' => {'valid_codes'=>{'http://hl7.org/fhir/device-correctiveactionscope'=>['model', 'lot-numbers', 'serial-numbers']}, 'path'=>'CorrectiveAction.scope', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-correctiveactionscope'}},
          'period' => {'path'=>'CorrectiveAction.period', 'type'=>'Period', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :recall            # 1-1 boolean
        attr_accessor :scope             # 0-1 code
        attr_accessor :period            # 1-1 Period
      end

      class ChargeItem < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'ChargeItem.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'ChargeItem.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'ChargeItem.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'chargeItemCode' => {'path'=>'ChargeItem.chargeItemCode', 'type'=>'CodeableReference', 'min'=>1, 'max'=>1},
          'count' => {'path'=>'ChargeItem.count', 'type'=>'Quantity', 'min'=>1, 'max'=>1},
          'effectivePeriod' => {'path'=>'ChargeItem.effectivePeriod', 'type'=>'Period', 'min'=>0, 'max'=>1},
          'useContext' => {'path'=>'ChargeItem.useContext', 'type'=>'UsageContext', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :chargeItemCode    # 1-1 CodeableReference
        attr_accessor :count             # 1-1 Quantity
        attr_accessor :effectivePeriod   # 0-1 Period
        attr_accessor :useContext        # 0-* [ UsageContext ]
      end

      attr_accessor :id                        # 0-1 id
      attr_accessor :meta                      # 0-1 Meta
      attr_accessor :implicitRules             # 0-1 uri
      attr_accessor :language                  # 0-1 code
      attr_accessor :text                      # 0-1 Narrative
      attr_accessor :contained                 # 0-* [ Resource ]
      attr_accessor :extension                 # 0-* [ Extension ]
      attr_accessor :modifierExtension         # 0-* [ Extension ]
      attr_accessor :description               # 0-1 markdown
      attr_accessor :identifier                # 0-* [ Identifier ]
      attr_accessor :udiDeviceIdentifier       # 0-* [ DeviceDefinition::UdiDeviceIdentifier ]
      attr_accessor :regulatoryIdentifier      # 0-* [ DeviceDefinition::RegulatoryIdentifier ]
      attr_accessor :partNumber                # 0-1 string
      attr_accessor :manufacturer              # 0-1 Reference(Organization)
      attr_accessor :deviceName                # 0-* [ DeviceDefinition::DeviceName ]
      attr_accessor :modelNumber               # 0-1 string
      attr_accessor :classification            # 0-* [ DeviceDefinition::Classification ]
      attr_accessor :conformsTo                # 0-* [ DeviceDefinition::ConformsTo ]
      attr_accessor :hasPart                   # 0-* [ DeviceDefinition::HasPart ]
      attr_accessor :packaging                 # 0-* [ DeviceDefinition::Packaging ]
      attr_accessor :version                   # 0-* [ DeviceDefinition::Version ]
      attr_accessor :safety                    # 0-* [ CodeableConcept ]
      attr_accessor :shelfLifeStorage          # 0-* [ ProductShelfLife ]
      attr_accessor :languageCode              # 0-* [ CodeableConcept ]
      attr_accessor :property                  # 0-* [ DeviceDefinition::Property ]
      attr_accessor :owner                     # 0-1 Reference(Organization)
      attr_accessor :contact                   # 0-* [ ContactPoint ]
      attr_accessor :link                      # 0-* [ DeviceDefinition::Link ]
      attr_accessor :note                      # 0-* [ Annotation ]
      attr_accessor :material                  # 0-* [ DeviceDefinition::Material ]
      attr_accessor :productionIdentifierInUDI # 0-* [ code ]
      attr_accessor :guideline                 # 0-1 DeviceDefinition::Guideline
      attr_accessor :correctiveAction          # 0-1 DeviceDefinition::CorrectiveAction
      attr_accessor :chargeItem                # 0-* [ DeviceDefinition::ChargeItem ]

      def resourceType
        'DeviceDefinition'
      end
    end
  end
end