module FHIR
  module R4B
    class Patient < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'deceased' => ['boolean', 'dateTime'],
        'multipleBirth' => ['boolean', 'integer']
      }
      SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'birthdate', 'death-date', 'deceased', 'email', 'family', 'gender', 'general-practitioner', 'given', 'identifier', 'language', 'link', 'name', 'organization', 'phone', 'phonetic', 'telecom']
      METADATA = {
        'id' => {'path'=>'Patient.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Patient.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Patient.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Patient.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'Patient.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Patient.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Patient.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Patient.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Patient.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'Patient.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'Patient.name', 'type'=>'HumanName', 'min'=>0, 'max'=>Float::INFINITY},
        'telecom' => {'path'=>'Patient.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'path'=>'Patient.gender', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'birthDate' => {'path'=>'Patient.birthDate', 'type'=>'date', 'min'=>0, 'max'=>1},
        'deceasedBoolean' => {'path'=>'Patient.deceased[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'deceasedDateTime' => {'path'=>'Patient.deceased[x]', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'address' => {'path'=>'Patient.address', 'type'=>'Address', 'min'=>0, 'max'=>Float::INFINITY},
        'maritalStatus' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus'=>['A', 'D', 'I', 'L', 'M', 'C', 'P', 'T', 'U', 'S', 'W'], 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor'=>['UNK']}, 'path'=>'Patient.maritalStatus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/marital-status'}},
        'multipleBirthBoolean' => {'path'=>'Patient.multipleBirth[x]', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'multipleBirthInteger' => {'path'=>'Patient.multipleBirth[x]', 'type'=>'integer', 'min'=>0, 'max'=>1},
        'photo' => {'path'=>'Patient.photo', 'type'=>'Attachment', 'min'=>0, 'max'=>Float::INFINITY},
        'contact' => {'path'=>'Patient.contact', 'type'=>'Patient::Contact', 'min'=>0, 'max'=>Float::INFINITY},
        'communication' => {'path'=>'Patient.communication', 'type'=>'Patient::Communication', 'min'=>0, 'max'=>Float::INFINITY},
        'generalPractitioner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'path'=>'Patient.generalPractitioner', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Patient.managingOrganization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'link' => {'path'=>'Patient.link', 'type'=>'Patient::Link', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Contact < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Contact.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Contact.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Contact.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'relationship' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0131'=>['BP', 'CP', 'EP', 'PR', 'E', 'C', 'F', 'I', 'N', 'S', 'U']}, 'path'=>'Contact.relationship', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/patient-contactrelationship'}},
          'name' => {'path'=>'Contact.name', 'type'=>'HumanName', 'min'=>0, 'max'=>1},
          'telecom' => {'path'=>'Contact.telecom', 'type'=>'ContactPoint', 'min'=>0, 'max'=>Float::INFINITY},
          'address' => {'path'=>'Contact.address', 'type'=>'Address', 'min'=>0, 'max'=>1},
          'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown']}, 'path'=>'Contact.gender', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
          'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'Contact.organization', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'period' => {'path'=>'Contact.period', 'type'=>'Period', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :relationship      # 0-* [ CodeableConcept ]
        attr_accessor :name              # 0-1 HumanName
        attr_accessor :telecom           # 0-* [ ContactPoint ]
        attr_accessor :address           # 0-1 Address
        attr_accessor :gender            # 0-1 code
        attr_accessor :organization      # 0-1 Reference(Organization)
        attr_accessor :period            # 0-1 Period
      end

      class Communication < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Communication.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Communication.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Communication.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'Communication.language', 'type'=>'CodeableConcept', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
          'preferred' => {'path'=>'Communication.preferred', 'type'=>'boolean', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :language          # 1-1 CodeableConcept
        attr_accessor :preferred         # 0-1 boolean
      end

      class Link < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Link.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Link.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Link.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'other' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'path'=>'Link.other', 'type'=>'Reference', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/link-type'=>['replaced-by', 'replaces', 'refer', 'seealso']}, 'path'=>'Link.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/link-type'}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :other             # 1-1 Reference(Patient|RelatedPerson)
        attr_accessor :type              # 1-1 code
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
      attr_accessor :active               # 0-1 boolean
      attr_accessor :name                 # 0-* [ HumanName ]
      attr_accessor :telecom              # 0-* [ ContactPoint ]
      attr_accessor :gender               # 0-1 code
      attr_accessor :birthDate            # 0-1 date
      attr_accessor :deceasedBoolean      # 0-1 boolean
      attr_accessor :deceasedDateTime     # 0-1 dateTime
      attr_accessor :address              # 0-* [ Address ]
      attr_accessor :maritalStatus        # 0-1 CodeableConcept
      attr_accessor :multipleBirthBoolean # 0-1 boolean
      attr_accessor :multipleBirthInteger # 0-1 integer
      attr_accessor :photo                # 0-* [ Attachment ]
      attr_accessor :contact              # 0-* [ Patient::Contact ]
      attr_accessor :communication        # 0-* [ Patient::Communication ]
      attr_accessor :generalPractitioner  # 0-* [ Reference(Organization|Practitioner|PractitionerRole) ]
      attr_accessor :managingOrganization # 0-1 Reference(Organization)
      attr_accessor :link                 # 0-* [ Patient::Link ]

      def resourceType
        'Patient'
      end
    end
  end
end