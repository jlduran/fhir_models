module FHIR
  module R5
    class HealthcareService < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['active', 'characteristic', 'communication', 'coverage-area', 'eligibility', 'endpoint', 'identifier', 'location', 'name', 'offered-in', 'organization', 'program', 'service-category', 'service-type', 'specialty']
      METADATA = {
        'id' => {'path'=>'HealthcareService.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'HealthcareService.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'HealthcareService.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'HealthcareService.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'HealthcareService.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'HealthcareService.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'HealthcareService.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'HealthcareService.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'HealthcareService.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'active' => {'path'=>'HealthcareService.active', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'providedBy' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'path'=>'HealthcareService.providedBy', 'type'=>'Reference', 'min'=>0, 'max'=>1},
        'offeredIn' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/HealthcareService'], 'path'=>'HealthcareService.offeredIn', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'category' => {'path'=>'HealthcareService.category', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-category'}},
        'type' => {'path'=>'HealthcareService.type', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-type'}},
        'specialty' => {'valid_codes'=>{'http://snomed.info/sct'=>['408467006', '394577000', '394578005', '421661004', '408462000', '394579002', '394804000', '394580004', '394803006', '408480009', '408454008', '394809005', '394592004', '394600006', '394601005', '394581000', '408478003', '394812008', '408444009', '394582007', '408475000', '410005002', '394583002', '419772000', '394584008', '408443003', '394802001', '394915009', '394814009', '394808002', '394811001', '408446006', '394586005', '394916005', '408472002', '394597005', '394598000', '394807007', '419192003', '408468001', '394593009', '394813003', '410001006', '394589003', '394591006', '394599008', '394649004', '408470005', '394585009', '394821009', '422191005', '394594003', '416304004', '418960008', '394882004', '394806003', '394588006', '408459003', '394607009', '419610006', '418058008', '420208008', '418652005', '418535003', '418862001', '419365004', '418002000', '419983000', '419170002', '419472004', '394539006', '420112009', '409968004', '394587001', '394913002', '408440000', '418112009', '419815003', '394914008', '408455009', '394602003', '408447002', '394810000', '408450004', '408476004', '408469009', '408466002', '408471009', '408464004', '408441001', '408465003', '394605001', '394608004', '408461007', '408460008', '394606000', '408449004', '418018006', '394604002', '394609007', '408474001', '394610002', '394611003', '408477008', '394801008', '408463005', '419321007', '394576009', '394590007', '409967009', '408448007', '419043006', '394612005', '394733009', '394732004']}, 'path'=>'HealthcareService.specialty', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/c80-practice-codes'}},
        'location' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'HealthcareService.location', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'path'=>'HealthcareService.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'comment' => {'path'=>'HealthcareService.comment', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'extraDetails' => {'path'=>'HealthcareService.extraDetails', 'type'=>'markdown', 'min'=>0, 'max'=>1},
        'photo' => {'path'=>'HealthcareService.photo', 'type'=>'Attachment', 'min'=>0, 'max'=>1},
        'contact' => {'path'=>'HealthcareService.contact', 'type'=>'ExtendedContactDetail', 'min'=>0, 'max'=>Float::INFINITY},
        'coverageArea' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'path'=>'HealthcareService.coverageArea', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY},
        'serviceProvisionCode' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/service-provision-conditions'=>['free', 'disc', 'cost']}, 'path'=>'HealthcareService.serviceProvisionCode', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-provision-conditions'}},
        'eligibility' => {'path'=>'HealthcareService.eligibility', 'type'=>'HealthcareService::Eligibility', 'min'=>0, 'max'=>Float::INFINITY},
        'program' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/program'=>['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45']}, 'path'=>'HealthcareService.program', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/program'}},
        'characteristic' => {'valid_codes'=>{'http://hl7.org/fhir/service-mode'=>['in-person', 'telephone', 'videoconference', 'chat']}, 'path'=>'HealthcareService.characteristic', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-mode'}},
        'communication' => {'path'=>'HealthcareService.communication', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'referralMethod' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/service-referral-method'=>['fax', 'phone', 'elec', 'semail', 'mail']}, 'path'=>'HealthcareService.referralMethod', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-referral-method'}},
        'appointmentRequired' => {'path'=>'HealthcareService.appointmentRequired', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'availability' => {'path'=>'HealthcareService.availability', 'type'=>'Availability', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Endpoint'], 'path'=>'HealthcareService.endpoint', 'type'=>'Reference', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Eligibility < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Eligibility.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Eligibility.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Eligibility.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'path'=>'Eligibility.code', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
          'comment' => {'path'=>'Eligibility.comment', 'type'=>'markdown', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 0-1 CodeableConcept
        attr_accessor :comment           # 0-1 markdown
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
      attr_accessor :providedBy           # 0-1 Reference(Organization)
      attr_accessor :offeredIn            # 0-* [ Reference(HealthcareService) ]
      attr_accessor :category             # 0-* [ CodeableConcept ]
      attr_accessor :type                 # 0-* [ CodeableConcept ]
      attr_accessor :specialty            # 0-* [ CodeableConcept ]
      attr_accessor :location             # 0-* [ Reference(Location) ]
      attr_accessor :name                 # 0-1 string
      attr_accessor :comment              # 0-1 markdown
      attr_accessor :extraDetails         # 0-1 markdown
      attr_accessor :photo                # 0-1 Attachment
      attr_accessor :contact              # 0-* [ ExtendedContactDetail ]
      attr_accessor :coverageArea         # 0-* [ Reference(Location) ]
      attr_accessor :serviceProvisionCode # 0-* [ CodeableConcept ]
      attr_accessor :eligibility          # 0-* [ HealthcareService::Eligibility ]
      attr_accessor :program              # 0-* [ CodeableConcept ]
      attr_accessor :characteristic       # 0-* [ CodeableConcept ]
      attr_accessor :communication        # 0-* [ CodeableConcept ]
      attr_accessor :referralMethod       # 0-* [ CodeableConcept ]
      attr_accessor :appointmentRequired  # 0-1 boolean
      attr_accessor :availability         # 0-* [ Availability ]
      attr_accessor :endpoint             # 0-* [ Reference(Endpoint) ]

      def resourceType
        'HealthcareService'
      end
    end
  end
end