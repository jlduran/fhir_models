module FHIR
  module R5
    class Device < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['biological-source-event', 'code', 'code-value-concept', 'definition', 'device-name', 'expiration-date', 'identifier', 'location', 'lot-number', 'manufacture-date', 'manufacturer', 'model', 'organization', 'parent', 'serial-number', 'specification', 'specification-version', 'status', 'type', 'udi-carrier', 'udi-di', 'url', 'version']
      METADATA = {
        'id' => {'path'=>'Device.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Device.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Device.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Device.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Device.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Device.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Device.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Device.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Device.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'displayName' => {'path'=>'Device.displayName', 'type'=>'string', 'min'=>0, 'max'=>1},
        'definition' => {'path'=>'Device.definition', 'type'=>'CodeableReference', 'min'=>0, 'max'=>1},
        'udiCarrier' => {'path'=>'Device.udiCarrier', 'type'=>'Device::UdiCarrier', 'min'=>0, 'max'=>Float::INFINITY},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/device-status'=>['active', 'inactive', 'entered-in-error']}, 'path'=>'Device.status', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-status'}},
        'availabilityStatus' => {'valid_codes'=>{'http://hl7.org/fhir/device-availability-status'=>['lost', 'damaged', 'destroyed', 'available']}, 'path'=>'Device.availabilityStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/device-availability-status'}},
        'biologicalSourceEvent' => {'path'=>'Device.biologicalSourceEvent', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'manufacturer' => {'path'=>'Device.manufacturer', 'type'=>'string', 'min'=>0, 'max'=>1},
        'manufactureDate' => {'path'=>'Device.manufactureDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'expirationDate' => {'path'=>'Device.expirationDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'lotNumber' => {'path'=>'Device.lotNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'serialNumber' => {'path'=>'Device.serialNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Device.name', 'type'=>'Device::Name', 'min'=>0, 'max'=>Float::INFINITY},
        'modelNumber' => {'path'=>'Device.modelNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'partNumber' => {'path'=>'Device.partNumber', 'type'=>'string', 'min'=>0, 'max'=>1},
        'category' => {'valid_codes'=>{'http://hl7.org/fhir/device-category'=>['active', 'communicating', 'dme', 'home-use', 'implantable', 'in-vitro', 'point-of-care', 'single-use', 'reusable', 'software']}, 'path'=>'Device.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-category'}},
        'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['528391', '528404', '528425', '528402', '528409', '528390', '528457', '528401', '528455', '528403', '528405', '528388', '528397', '528408', '528426', '528392', '528399'], 'urn:oid:2.16.840.1.113883.6.276'=>['38017', '38663', '42347', '46352', '47264', '62163', '62260', '62423', '62414', '64587', '64992']}, 'path'=>'Device.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-type'}},
        'version' => {'path'=>'Device.version', 'type'=>'Device::Version', 'min'=>0, 'max'=>Float::INFINITY},
        'conformsTo' => {'path'=>'Device.conformsTo', 'type'=>'Device::ConformsTo', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'path'=>'Device.property', 'type'=>'Device::Property', 'min'=>0, 'max'=>Float::INFINITY},
        'mode' => {'valid_codes'=>{'http://hl7.org/fhir/device-operation-mode'=>['normal', 'demo', 'service', 'maintenance', 'test']}, 'path'=>'Device.mode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-operation-mode'}},
        'cycle' => {'path'=>'Device.cycle', 'type'=>'Count', 'min'=>0, 'max'=>1},
        'duration' => {'path'=>'Device.duration', 'type'=>'Duration', 'min'=>0, 'max'=>1},
        'owner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Device.owner', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'Device.contact', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'Device.location', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'url' => {'path'=>'Device.url', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'Device.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'gateway' => {'path'=>'Device.gateway', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'note' => {'path'=>'Device.note', 'type'=>'Annotation', 'min'=>0, 'max'=>Float::INFINITY},
        'safety' => {'valid_codes'=>{'urn:oid:2.16.840.1.113883.3.26.1.1'=>['C106046', 'C106045', 'C106047', 'C113844', 'C101673', 'C106038']}, 'path'=>'Device.safety', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-safety'}},
        'parent' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'path'=>'Device.parent', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      class UdiCarrier < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'UdiCarrier.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'UdiCarrier.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'UdiCarrier.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'deviceIdentifier' => {'path'=>'UdiCarrier.deviceIdentifier', 'type'=>'string', 'min'=>1, 'max'=>1},
          'issuer' => {'path'=>'UdiCarrier.issuer', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'jurisdiction' => {'path'=>'UdiCarrier.jurisdiction', 'type'=>'uri', 'min'=>0, 'max'=>1},
          'carrierAIDC' => {'path'=>'UdiCarrier.carrierAIDC', 'type'=>'base64Binary', 'min'=>0, 'max'=>1},
          'carrierHRF' => {'path'=>'UdiCarrier.carrierHRF', 'type'=>'string', 'min'=>0, 'max'=>1},
          'entryType' => {'valid_codes'=>{'http://hl7.org/fhir/udi-entry-type'=>['barcode', 'rfid', 'manual', 'card', 'self-reported', 'electronic-transmission', 'unknown']}, 'path'=>'UdiCarrier.entryType', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/udi-entry-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :deviceIdentifier  # 1-1 string
        attr_accessor :issuer            # 1-1 uri
        attr_accessor :jurisdiction      # 0-1 uri
        attr_accessor :carrierAIDC       # 0-1 base64Binary
        attr_accessor :carrierHRF        # 0-1 string
        attr_accessor :entryType         # 0-1 code
      end

      class Name < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Name.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Name.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Name.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'value' => {'path'=>'Name.value', 'type'=>'string', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/device-nametype'=>['registered-name', 'user-friendly-name', 'patient-reported-name']}, 'path'=>'Name.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/device-nametype'}},
          'display' => {'path'=>'Name.display', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :value             # 1-1 string
        attr_accessor :type              # 1-1 code
        attr_accessor :display           # 0-1 boolean
      end

      class Version < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Version.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Version.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Version.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'urn:iso:std:iso:11073:10101'=>['531974', '531975', '531976', '531977', '532352']}, 'path'=>'Version.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/device-versiontype'}},
          'component' => {'path'=>'Version.component', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'installDate' => {'path'=>'Version.installDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'value' => {'path'=>'Version.value', 'type'=>'string', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :component         # 0-1 Identifier
        attr_accessor :installDate       # 0-1 dateTime
        attr_accessor :value             # 1-1 string
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
          'version' => {'path'=>'ConformsTo.version', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :category          # 0-1 CodeableConcept
        attr_accessor :specification     # 1-1 CodeableConcept
        attr_accessor :version           # 0-1 string
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

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :identifier            # 0-* [ Identifier ]
      attr_accessor :displayName           # 0-1 string
      attr_accessor :definition            # 0-1 CodeableReference
      attr_accessor :udiCarrier            # 0-* [ Device::UdiCarrier ]
      attr_accessor :status                # 0-1 code
      attr_accessor :availabilityStatus    # 0-1 CodeableConcept
      attr_accessor :biologicalSourceEvent # 0-1 Identifier
      attr_accessor :manufacturer          # 0-1 string
      attr_accessor :manufactureDate       # 0-1 dateTime
      attr_accessor :expirationDate        # 0-1 dateTime
      attr_accessor :lotNumber             # 0-1 string
      attr_accessor :serialNumber          # 0-1 string
      attr_accessor :name                  # 0-* [ Device::Name ]
      attr_accessor :modelNumber           # 0-1 string
      attr_accessor :partNumber            # 0-1 string
      attr_accessor :category              # 0-* [ CodeableConcept ]
      attr_accessor :type                  # 0-* [ CodeableConcept ]
      attr_accessor :version               # 0-* [ Device::Version ]
      attr_accessor :conformsTo            # 0-* [ Device::ConformsTo ]
      attr_accessor :property              # 0-* [ Device::Property ]
      attr_accessor :mode                  # 0-1 CodeableConcept
      attr_accessor :cycle                 # 0-1 Count
      attr_accessor :duration              # 0-1 Duration
      attr_accessor :owner                 # 0-1 Reference(Organization)
      attr_accessor :contact               # 0-* [ ContactPoint ]
      attr_accessor :location              # 0-1 Reference(Location)
      attr_accessor :url                   # 0-1 uri
      attr_accessor :endpoint              # 0-* [ Reference(Endpoint) ]
      attr_accessor :gateway               # 0-* [ CodeableReference ]
      attr_accessor :note                  # 0-* [ Annotation ]
      attr_accessor :safety                # 0-* [ CodeableConcept ]
      attr_accessor :parent                # 0-1 Reference(Device)

      def resourceType
        'Device'
      end
    end
  end
end