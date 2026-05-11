module FHIR
  module R5
    class SubstanceSourceMaterial < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'path'=>'SubstanceSourceMaterial.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'SubstanceSourceMaterial.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'SubstanceSourceMaterial.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'SubstanceSourceMaterial.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'SubstanceSourceMaterial.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'SubstanceSourceMaterial.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'SubstanceSourceMaterial.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'SubstanceSourceMaterial.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'sourceMaterialClass' => {'path'=>'SubstanceSourceMaterial.sourceMaterialClass', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'sourceMaterialType' => {'path'=>'SubstanceSourceMaterial.sourceMaterialType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'sourceMaterialState' => {'path'=>'SubstanceSourceMaterial.sourceMaterialState', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'organismId' => {'path'=>'SubstanceSourceMaterial.organismId', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'organismName' => {'path'=>'SubstanceSourceMaterial.organismName', 'type'=>'string', 'min'=>0, 'max'=>1},
        'parentSubstanceId' => {'path'=>'SubstanceSourceMaterial.parentSubstanceId', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'parentSubstanceName' => {'path'=>'SubstanceSourceMaterial.parentSubstanceName', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'countryOfOrigin' => {'path'=>'SubstanceSourceMaterial.countryOfOrigin', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY},
        'geographicalLocation' => {'path'=>'SubstanceSourceMaterial.geographicalLocation', 'type'=>'string', 'min'=>0, 'max'=>Float::INFINITY},
        'developmentStage' => {'path'=>'SubstanceSourceMaterial.developmentStage', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
        'fractionDescription' => {'path'=>'SubstanceSourceMaterial.fractionDescription', 'type'=>'SubstanceSourceMaterial::FractionDescription', 'min'=>0, 'max'=>Float::INFINITY},
        'organism' => {'path'=>'SubstanceSourceMaterial.organism', 'type'=>'SubstanceSourceMaterial::Organism', 'min'=>0, 'max'=>1},
        'partDescription' => {'path'=>'SubstanceSourceMaterial.partDescription', 'type'=>'SubstanceSourceMaterial::PartDescription', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class FractionDescription < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'FractionDescription.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'FractionDescription.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'FractionDescription.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'fraction' => {'path'=>'FractionDescription.fraction', 'type'=>'string', 'min'=>0, 'max'=>1},
          'materialType' => {'path'=>'FractionDescription.materialType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :fraction          # 0-1 string
        attr_accessor :materialType      # 0-1 CodeableConcept
      end

      class Organism < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Organism.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Organism.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Organism.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'family' => {'path'=>'Organism.family', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'genus' => {'path'=>'Organism.genus', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'species' => {'path'=>'Organism.species', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'intraspecificType' => {'path'=>'Organism.intraspecificType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'intraspecificDescription' => {'path'=>'Organism.intraspecificDescription', 'type'=>'string', 'min'=>0, 'max'=>1},
          'author' => {'path'=>'Organism.author', 'type'=>'SubstanceSourceMaterial::Organism::Author', 'min'=>0, 'max'=>Float::INFINITY},
          'hybrid' => {'path'=>'Organism.hybrid', 'type'=>'SubstanceSourceMaterial::Organism::Hybrid', 'min'=>0, 'max'=>1},
          'organismGeneral' => {'path'=>'Organism.organismGeneral', 'type'=>'SubstanceSourceMaterial::Organism::OrganismGeneral', 'min'=>0, 'max'=>1}
        }

        class Author < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Author.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Author.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Author.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'authorType' => {'path'=>'Author.authorType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'authorDescription' => {'path'=>'Author.authorDescription', 'type'=>'string', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :authorType        # 0-1 CodeableConcept
          attr_accessor :authorDescription # 0-1 string
        end

        class Hybrid < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Hybrid.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Hybrid.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Hybrid.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'maternalOrganismId' => {'path'=>'Hybrid.maternalOrganismId', 'type'=>'string', 'min'=>0, 'max'=>1},
            'maternalOrganismName' => {'path'=>'Hybrid.maternalOrganismName', 'type'=>'string', 'min'=>0, 'max'=>1},
            'paternalOrganismId' => {'path'=>'Hybrid.paternalOrganismId', 'type'=>'string', 'min'=>0, 'max'=>1},
            'paternalOrganismName' => {'path'=>'Hybrid.paternalOrganismName', 'type'=>'string', 'min'=>0, 'max'=>1},
            'hybridType' => {'path'=>'Hybrid.hybridType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                   # 0-1 string
          attr_accessor :extension            # 0-* [ Extension ]
          attr_accessor :modifierExtension    # 0-* [ Extension ]
          attr_accessor :maternalOrganismId   # 0-1 string
          attr_accessor :maternalOrganismName # 0-1 string
          attr_accessor :paternalOrganismId   # 0-1 string
          attr_accessor :paternalOrganismName # 0-1 string
          attr_accessor :hybridType           # 0-1 CodeableConcept
        end

        class OrganismGeneral < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'OrganismGeneral.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'OrganismGeneral.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'OrganismGeneral.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'kingdom' => {'path'=>'OrganismGeneral.kingdom', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'phylum' => {'path'=>'OrganismGeneral.phylum', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'class' => {'local_name'=>'local_class', 'path'=>'OrganismGeneral.class', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
            'order' => {'path'=>'OrganismGeneral.order', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :kingdom           # 0-1 CodeableConcept
          attr_accessor :phylum            # 0-1 CodeableConcept
          attr_accessor :local_class       # 0-1 CodeableConcept
          attr_accessor :order             # 0-1 CodeableConcept
        end

        attr_accessor :id                       # 0-1 string
        attr_accessor :extension                # 0-* [ Extension ]
        attr_accessor :modifierExtension        # 0-* [ Extension ]
        attr_accessor :family                   # 0-1 CodeableConcept
        attr_accessor :genus                    # 0-1 CodeableConcept
        attr_accessor :species                  # 0-1 CodeableConcept
        attr_accessor :intraspecificType        # 0-1 CodeableConcept
        attr_accessor :intraspecificDescription # 0-1 string
        attr_accessor :author                   # 0-* [ SubstanceSourceMaterial::Organism::Author ]
        attr_accessor :hybrid                   # 0-1 SubstanceSourceMaterial::Organism::Hybrid
        attr_accessor :organismGeneral          # 0-1 SubstanceSourceMaterial::Organism::OrganismGeneral
      end

      class PartDescription < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'PartDescription.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'PartDescription.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'PartDescription.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'part' => {'path'=>'PartDescription.part', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1},
          'partLocation' => {'path'=>'PartDescription.partLocation', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :part              # 0-1 CodeableConcept
        attr_accessor :partLocation      # 0-1 CodeableConcept
      end

      attr_accessor :id                   # 0-1 id
      attr_accessor :meta                 # 0-1 Meta
      attr_accessor :implicitRules        # 0-1 uri
      attr_accessor :language             # 0-1 code
      attr_accessor :text                 # 0-1 Narrative
      attr_accessor :contained            # 0-* [ Resource ]
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :sourceMaterialClass  # 0-1 CodeableConcept
      attr_accessor :sourceMaterialType   # 0-1 CodeableConcept
      attr_accessor :sourceMaterialState  # 0-1 CodeableConcept
      attr_accessor :organismId           # 0-1 Identifier
      attr_accessor :organismName         # 0-1 string
      attr_accessor :parentSubstanceId    # 0-* [ Identifier ]
      attr_accessor :parentSubstanceName  # 0-* [ string ]
      attr_accessor :countryOfOrigin      # 0-* [ CodeableConcept ]
      attr_accessor :geographicalLocation # 0-* [ string ]
      attr_accessor :developmentStage     # 0-1 CodeableConcept
      attr_accessor :fractionDescription  # 0-* [ SubstanceSourceMaterial::FractionDescription ]
      attr_accessor :organism             # 0-1 SubstanceSourceMaterial::Organism
      attr_accessor :partDescription      # 0-* [ SubstanceSourceMaterial::PartDescription ]

      def resourceType
        'SubstanceSourceMaterial'
      end
    end
  end
end