module FHIR
  module R4
    class SubstancePolymer < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubstancePolymer.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubstancePolymer.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubstancePolymer.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'SubstancePolymer.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'SubstancePolymer.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubstancePolymer.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubstancePolymer.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstancePolymer.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'class' => {'local_name'=>'local_class', 'path'=>'SubstancePolymer.class', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'geometry' => {'path'=>'SubstancePolymer.geometry', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'copolymerConnectivity' => {'path'=>'SubstancePolymer.copolymerConnectivity', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'modification' => {'path'=>'SubstancePolymer.modification', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'monomerSet' => {'path'=>'SubstancePolymer.monomerSet', 'type'=>'SubstancePolymer::MonomerSet', 'min'=>0, 'max'=>Float::INFINITY},
        'repeat' => {'path'=>'SubstancePolymer.repeat', 'type'=>'SubstancePolymer::Repeat', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class MonomerSet < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'MonomerSet.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'MonomerSet.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'MonomerSet.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'ratioType' => {'path'=>'MonomerSet.ratioType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'startingMaterial' => {'path'=>'MonomerSet.startingMaterial', 'type'=>'SubstancePolymer::MonomerSet::StartingMaterial', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class StartingMaterial < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'StartingMaterial.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'StartingMaterial.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'StartingMaterial.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'material' => {'path'=>'StartingMaterial.material', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'type' => {'path'=>'StartingMaterial.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'isDefining' => {'path'=>'StartingMaterial.isDefining', 'type'=>'boolean', 'min'=>0, 'max'=>1},
            'amount' => {'path'=>'StartingMaterial.amount', 'type'=>'SubstanceAmount', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :material          # 0-1 CodeableConcept
          attr_accessor :type              # 0-1 CodeableConcept
          attr_accessor :isDefining        # 0-1 boolean
          attr_accessor :amount            # 0-1 SubstanceAmount
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :ratioType         # 0-1 CodeableConcept
        attr_accessor :startingMaterial  # 0-* [ SubstancePolymer::MonomerSet::StartingMaterial ]
      end

      class Repeat < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Repeat.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Repeat.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Repeat.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'numberOfUnits' => {'path'=>'Repeat.numberOfUnits', 'type'=>'integer', 'min'=>0, 'max'=>1},
          'averageMolecularFormula' => {'path'=>'Repeat.averageMolecularFormula', 'type'=>'string', 'min'=>0, 'max'=>1},
          'repeatUnitAmountType' => {'path'=>'Repeat.repeatUnitAmountType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'repeatUnit' => {'path'=>'Repeat.repeatUnit', 'type'=>'SubstancePolymer::Repeat::RepeatUnit', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class RepeatUnit < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'RepeatUnit.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'RepeatUnit.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'RepeatUnit.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'orientationOfPolymerisation' => {'path'=>'RepeatUnit.orientationOfPolymerisation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'repeatUnit' => {'path'=>'RepeatUnit.repeatUnit', 'type'=>'string', 'min'=>0, 'max'=>1},
            'amount' => {'path'=>'RepeatUnit.amount', 'type'=>'SubstanceAmount', 'min'=>0, 'max'=>1},
            'degreeOfPolymerisation' => {'path'=>'RepeatUnit.degreeOfPolymerisation', 'type'=>'SubstancePolymer::Repeat::RepeatUnit::DegreeOfPolymerisation', 'min'=>0, 'max'=>Float::INFINITY},
            'structuralRepresentation' => {'path'=>'RepeatUnit.structuralRepresentation', 'type'=>'SubstancePolymer::Repeat::RepeatUnit::StructuralRepresentation', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class DegreeOfPolymerisation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'DegreeOfPolymerisation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'DegreeOfPolymerisation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'DegreeOfPolymerisation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'degree' => {'path'=>'DegreeOfPolymerisation.degree', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'amount' => {'path'=>'DegreeOfPolymerisation.amount', 'type'=>'SubstanceAmount', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :degree            # 0-1 CodeableConcept
            attr_accessor :amount            # 0-1 SubstanceAmount
          end

          class StructuralRepresentation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'StructuralRepresentation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'StructuralRepresentation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'StructuralRepresentation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'path'=>'StructuralRepresentation.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
              'representation' => {'path'=>'StructuralRepresentation.representation', 'type'=>'string', 'min'=>0, 'max'=>1},
              'attachment' => {'path'=>'StructuralRepresentation.attachment', 'type'=>'Attachment', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 CodeableConcept
            attr_accessor :representation    # 0-1 string
            attr_accessor :attachment        # 0-1 Attachment
          end

          attr_accessor :id                          # 0-1 string
          attr_accessor :extension                   # 0-* [ Extension ]
          attr_accessor :modifierExtension           # 0-* [ Extension ]
          attr_accessor :orientationOfPolymerisation # 0-1 CodeableConcept
          attr_accessor :repeatUnit                  # 0-1 string
          attr_accessor :amount                      # 0-1 SubstanceAmount
          attr_accessor :degreeOfPolymerisation      # 0-* [ SubstancePolymer::Repeat::RepeatUnit::DegreeOfPolymerisation ]
          attr_accessor :structuralRepresentation    # 0-* [ SubstancePolymer::Repeat::RepeatUnit::StructuralRepresentation ]
        end

        attr_accessor :id                      # 0-1 string
        attr_accessor :extension               # 0-* [ Extension ]
        attr_accessor :modifierExtension       # 0-* [ Extension ]
        attr_accessor :numberOfUnits           # 0-1 integer
        attr_accessor :averageMolecularFormula # 0-1 string
        attr_accessor :repeatUnitAmountType    # 0-1 CodeableConcept
        attr_accessor :repeatUnit              # 0-* [ SubstancePolymer::Repeat::RepeatUnit ]
      end

      attr_accessor :id                    # 0-1 id
      attr_accessor :meta                  # 0-1 Meta
      attr_accessor :implicitRules         # 0-1 uri
      attr_accessor :language              # 0-1 code
      attr_accessor :text                  # 0-1 Narrative
      attr_accessor :contained             # 0-* [ Resource ]
      attr_accessor :extension             # 0-* [ Extension ]
      attr_accessor :modifierExtension     # 0-* [ Extension ]
      attr_accessor :local_class           # 0-1 CodeableConcept
      attr_accessor :geometry              # 0-1 CodeableConcept
      attr_accessor :copolymerConnectivity # 0-* [ CodeableConcept ]
      attr_accessor :modification          # 0-* [ string ]
      attr_accessor :monomerSet            # 0-* [ SubstancePolymer::MonomerSet ]
      attr_accessor :repeat                # 0-* [ SubstancePolymer::Repeat ]

      def resourceType
        'SubstancePolymer'
      end
    end
  end
  SubstancePolymer = FHIR::R4::SubstancePolymer
end