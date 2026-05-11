module FHIR
  module R4
    class SubstanceSpecification < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['code']
      METADATA = {
        'id' => {'path'=>'SubstanceSpecification.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubstanceSpecification.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubstanceSpecification.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'SubstanceSpecification.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'SubstanceSpecification.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubstanceSpecification.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubstanceSpecification.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstanceSpecification.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'SubstanceSpecification.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'type' => {'path'=>'SubstanceSpecification.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'status' => {'path'=>'SubstanceSpecification.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'domain' => {'path'=>'SubstanceSpecification.domain', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'description' => {'path'=>'SubstanceSpecification.description', 'type'=>'string', 'min'=>0, 'max'=>1},
        'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'SubstanceSpecification.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'comment' => {'path'=>'SubstanceSpecification.comment', 'type'=>'string', 'min'=>0, 'max'=>1},
        'moiety' => {'path'=>'SubstanceSpecification.moiety', 'type'=>'SubstanceSpecification::Moiety', 'min'=>0, 'max'=>Float::INFINITY},
        'property' => {'path'=>'SubstanceSpecification.property', 'type'=>'SubstanceSpecification::Property', 'min'=>0, 'max'=>Float::INFINITY},
        'referenceInformation' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceReferenceInformation'], 'path'=>'SubstanceSpecification.referenceInformation', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'structure' => {'path'=>'SubstanceSpecification.structure', 'type'=>'SubstanceSpecification::Structure', 'min'=>0, 'max'=>1},
        'code' => {'path'=>'SubstanceSpecification.code', 'type'=>'SubstanceSpecification::Code', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'SubstanceSpecification.name', 'type'=>'SubstanceSpecification::Name', 'min'=>0, 'max'=>Float::INFINITY},
        'molecularWeight' => {'path'=>'SubstanceSpecification.molecularWeight', 'type'=>'SubstanceSpecification::Structure::Isotope::MolecularWeight', 'min'=>0, 'max'=>Float::INFINITY},
        'relationship' => {'path'=>'SubstanceSpecification.relationship', 'type'=>'SubstanceSpecification::Relationship', 'min'=>0, 'max'=>Float::INFINITY},
        'nucleicAcid' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceNucleicAcid'], 'path'=>'SubstanceSpecification.nucleicAcid', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'polymer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstancePolymer'], 'path'=>'SubstanceSpecification.polymer', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'protein' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceProtein'], 'path'=>'SubstanceSpecification.protein', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'sourceMaterial' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceSourceMaterial'], 'path'=>'SubstanceSpecification.sourceMaterial', 'type'=>'Reference', 'min'=>0, 'max'=>1}
      }

      class Moiety < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'amount' => ['Quantity', 'string']
        }
        METADATA = {
          'id' => {'path'=>'Moiety.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Moiety.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Moiety.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'role' => {'path'=>'Moiety.role', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'identifier' => {'path'=>'Moiety.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
          'name' => {'path'=>'Moiety.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'stereochemistry' => {'path'=>'Moiety.stereochemistry', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'opticalActivity' => {'path'=>'Moiety.opticalActivity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'molecularFormula' => {'path'=>'Moiety.molecularFormula', 'type'=>'string', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'path'=>'Moiety.amount[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'amountString' => {'path'=>'Moiety.amount[x]', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :role              # 0-1 CodeableConcept
        attr_accessor :identifier        # 0-1 Identifier
        attr_accessor :name              # 0-1 string
        attr_accessor :stereochemistry   # 0-1 CodeableConcept
        attr_accessor :opticalActivity   # 0-1 CodeableConcept
        attr_accessor :molecularFormula  # 0-1 string
        attr_accessor :amountQuantity    # 0-1 Quantity
        attr_accessor :amountString      # 0-1 string
      end

      class Property < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'definingSubstance' => ['Reference', 'CodeableConcept'],
          'amount' => ['Quantity', 'string']
        }
        METADATA = {
          'id' => {'path'=>'Property.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Property.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Property.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'category' => {'path'=>'Property.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'code' => {'path'=>'Property.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'parameters' => {'path'=>'Property.parameters', 'type'=>'string', 'min'=>0, 'max'=>1},
          'definingSubstanceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceSpecification', 'http://hl7.org/fhir/StructureDefinition/Substance'], 'path'=>'Property.definingSubstance[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'definingSubstanceCodeableConcept' => {'path'=>'Property.definingSubstance[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'path'=>'Property.amount[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'amountString' => {'path'=>'Property.amount[x]', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                               # 0-1 string
        attr_accessor :extension                        # 0-* [ Extension ]
        attr_accessor :modifierExtension                # 0-* [ Extension ]
        attr_accessor :category                         # 0-1 CodeableConcept
        attr_accessor :code                             # 0-1 CodeableConcept
        attr_accessor :parameters                       # 0-1 string
        attr_accessor :definingSubstanceReference       # 0-1 Reference(SubstanceSpecification|Substance)
        attr_accessor :definingSubstanceCodeableConcept # 0-1 CodeableConcept
        attr_accessor :amountQuantity                   # 0-1 Quantity
        attr_accessor :amountString                     # 0-1 string
      end

      class Structure < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Structure.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Structure.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Structure.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'stereochemistry' => {'path'=>'Structure.stereochemistry', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'opticalActivity' => {'path'=>'Structure.opticalActivity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'molecularFormula' => {'path'=>'Structure.molecularFormula', 'type'=>'string', 'min'=>0, 'max'=>1},
          'molecularFormulaByMoiety' => {'path'=>'Structure.molecularFormulaByMoiety', 'type'=>'string', 'min'=>0, 'max'=>1},
          'isotope' => {'path'=>'Structure.isotope', 'type'=>'SubstanceSpecification::Structure::Isotope', 'min'=>0, 'max'=>Float::INFINITY},
          'molecularWeight' => {'path'=>'Structure.molecularWeight', 'type'=>'SubstanceSpecification::Structure::Isotope::MolecularWeight', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Structure.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
          'representation' => {'path'=>'Structure.representation', 'type'=>'SubstanceSpecification::Structure::Representation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Isotope < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Isotope.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Isotope.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Isotope.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'identifier' => {'path'=>'Isotope.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
            'name' => {'path'=>'Isotope.name', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'substitution' => {'path'=>'Isotope.substitution', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'halfLife' => {'path'=>'Isotope.halfLife', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
            'molecularWeight' => {'path'=>'Isotope.molecularWeight', 'type'=>'SubstanceSpecification::Structure::Isotope::MolecularWeight', 'min'=>0, 'max'=>1}
          }

          class MolecularWeight < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'MolecularWeight.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'MolecularWeight.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'MolecularWeight.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'method' => {'local_name'=>'local_method', 'path'=>'MolecularWeight.method', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'type' => {'path'=>'MolecularWeight.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'amount' => {'path'=>'MolecularWeight.amount', 'type'=>'Quantity', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :local_method      # 0-1 CodeableConcept
            attr_accessor :type              # 0-1 CodeableConcept
            attr_accessor :amount            # 0-1 Quantity
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :identifier        # 0-1 Identifier
          attr_accessor :name              # 0-1 CodeableConcept
          attr_accessor :substitution      # 0-1 CodeableConcept
          attr_accessor :halfLife          # 0-1 Quantity
          attr_accessor :molecularWeight   # 0-1 SubstanceSpecification::Structure::Isotope::MolecularWeight
        end

        class Representation < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Representation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Representation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Representation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'path'=>'Representation.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'representation' => {'path'=>'Representation.representation', 'type'=>'string', 'min'=>0, 'max'=>1},
            'attachment' => {'path'=>'Representation.attachment', 'type'=>'Attachment', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :representation    # 0-1 string
          attr_accessor :attachment        # 0-1 Attachment
        end

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :stereochemistry          # 0-1 CodeableConcept
        attr_accessor :opticalActivity          # 0-1 CodeableConcept
        attr_accessor :molecularFormula         # 0-1 string
        attr_accessor :molecularFormulaByMoiety # 0-1 string
        attr_accessor :isotope                  # 0-* [ SubstanceSpecification::Structure::Isotope ]
        attr_accessor :molecularWeight          # 0-1 SubstanceSpecification::Structure::Isotope::MolecularWeight
        attr_accessor :source                   # 0-* [ Reference(DocumentReference) ]
        attr_accessor :representation           # 0-* [ SubstanceSpecification::Structure::Representation ]
      end

      class Code < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Code.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Code.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Code.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Code.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'status' => {'path'=>'Code.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'statusDate' => {'path'=>'Code.statusDate', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
          'comment' => {'path'=>'Code.comment', 'type'=>'string', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Code.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
        attr_accessor :statusDate        # 0-1 dateTime
        attr_accessor :comment           # 0-1 string
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Name < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Name.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Name.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Name.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Name.name', 'type'=>'string', 'min'=>1, 'max'=>1},
          'type' => {'path'=>'Name.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'status' => {'path'=>'Name.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'preferred' => {'path'=>'Name.preferred', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'language' => {'path'=>'Name.language', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'domain' => {'path'=>'Name.domain', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'jurisdiction' => {'path'=>'Name.jurisdiction', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
          'synonym' => {'path'=>'Name.synonym', 'type'=>'SubstanceSpecification::Name', 'min'=>0, 'max'=>Float::INFINITY},
          'translation' => {'path'=>'Name.translation', 'type'=>'SubstanceSpecification::Name', 'min'=>0, 'max'=>Float::INFINITY},
          'official' => {'path'=>'Name.official', 'type'=>'SubstanceSpecification::Name::Official', 'min'=>0, 'max'=>Float::INFINITY},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Name.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Official < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Official.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Official.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Official.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'authority' => {'path'=>'Official.authority', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'status' => {'path'=>'Official.status', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'date' => {'path'=>'Official.date', 'type'=>'dateTime', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :authority         # 0-1 CodeableConcept
          attr_accessor :status            # 0-1 CodeableConcept
          attr_accessor :date              # 0-1 dateTime
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :type              # 0-1 CodeableConcept
        attr_accessor :status            # 0-1 CodeableConcept
        attr_accessor :preferred         # 0-1 boolean
        attr_accessor :language          # 0-* [ CodeableConcept ]
        attr_accessor :domain            # 0-* [ CodeableConcept ]
        attr_accessor :jurisdiction      # 0-* [ CodeableConcept ]
        attr_accessor :synonym           # 0-* [ SubstanceSpecification::Name ]
        attr_accessor :translation       # 0-* [ SubstanceSpecification::Name ]
        attr_accessor :official          # 0-* [ SubstanceSpecification::Name::Official ]
        attr_accessor :source            # 0-* [ Reference(DocumentReference) ]
      end

      class Relationship < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'substance' => ['Reference', 'CodeableConcept'],
          'amount' => ['Quantity', 'Range', 'Ratio', 'string']
        }
        METADATA = {
          'id' => {'path'=>'Relationship.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Relationship.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Relationship.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'substanceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/SubstanceSpecification'], 'path'=>'Relationship.substance[x]', 'type'=>'Reference', 'min'=>0, 'max'=>1},
          'substanceCodeableConcept' => {'path'=>'Relationship.substance[x]', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'relationship' => {'path'=>'Relationship.relationship', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'isDefining' => {'path'=>'Relationship.isDefining', 'type'=>'boolean', 'min'=>0, 'max'=>1},
          'amountQuantity' => {'path'=>'Relationship.amount[x]', 'type'=>'Quantity', 'min'=>0, 'max'=>1},
          'amountRange' => {'path'=>'Relationship.amount[x]', 'type'=>'Range', 'min'=>0, 'max'=>1},
          'amountRatio' => {'path'=>'Relationship.amount[x]', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
          'amountString' => {'path'=>'Relationship.amount[x]', 'type'=>'string', 'min'=>0, 'max'=>1},
          'amountRatioLowLimit' => {'path'=>'Relationship.amountRatioLowLimit', 'type'=>'Ratio', 'min'=>0, 'max'=>1},
          'amountType' => {'path'=>'Relationship.amountType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'source' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'path'=>'Relationship.source', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
        }

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :substanceReference       # 0-1 Reference(SubstanceSpecification)
        attr_accessor :substanceCodeableConcept # 0-1 CodeableConcept
        attr_accessor :relationship             # 0-1 CodeableConcept
        attr_accessor :isDefining               # 0-1 boolean
        attr_accessor :amountQuantity           # 0-1 Quantity
        attr_accessor :amountRange              # 0-1 Range
        attr_accessor :amountRatio              # 0-1 Ratio
        attr_accessor :amountString             # 0-1 string
        attr_accessor :amountRatioLowLimit      # 0-1 Ratio
        attr_accessor :amountType               # 0-1 CodeableConcept
        attr_accessor :source                   # 0-* [ Reference(DocumentReference) ]
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-1 Identifier
      attr_accessor :type                 # 0-1 CodeableConcept
      attr_accessor :status               # 0-1 CodeableConcept
      attr_accessor :domain               # 0-1 CodeableConcept
      attr_accessor :description          # 0-1 string
      attr_accessor :source               # 0-* [ Reference(DocumentReference) ]
      attr_accessor :comment              # 0-1 string
      attr_accessor :moiety               # 0-* [ SubstanceSpecification::Moiety ]
      attr_accessor :property             # 0-* [ SubstanceSpecification::Property ]
      attr_accessor :referenceInformation # 0-1 Reference(SubstanceReferenceInformation)
      attr_accessor :structure            # 0-1 SubstanceSpecification::Structure
      attr_accessor :code                 # 0-* [ SubstanceSpecification::Code ]
      attr_accessor :name                 # 0-* [ SubstanceSpecification::Name ]
      attr_accessor :molecularWeight      # 0-* [ SubstanceSpecification::Structure::Isotope::MolecularWeight ]
      attr_accessor :relationship         # 0-* [ SubstanceSpecification::Relationship ]
      attr_accessor :nucleicAcid          # 0-1 Reference(SubstanceNucleicAcid)
      attr_accessor :polymer              # 0-1 Reference(SubstancePolymer)
      attr_accessor :protein              # 0-1 Reference(SubstanceProtein)
      attr_accessor :sourceMaterial       # 0-1 Reference(SubstanceSourceMaterial)

      def resourceType
        'SubstanceSpecification'
      end
    end
  end
  SubstanceSpecification = FHIR::R4::SubstanceSpecification
end