module FHIR
  module R5
    class Slot < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['appointment-type', 'identifier', 'schedule', 'service-category', 'service-type', 'service-type-reference', 'specialty', 'start', 'status']
      METADATA = {
        'id' => {'path'=>'Slot.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'Slot.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'Slot.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'path'=>'Slot.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'path'=>'Slot.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'Slot.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'Slot.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'Slot.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'Slot.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'serviceCategory' => {'path'=>'Slot.serviceCategory', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/service-category'}},
        'serviceType' => {'path'=>'Slot.serviceType', 'type'=>'CodeableReference', 'min'=>0, 'max'=>Float::INFINITY},
        'specialty' => {'valid_codes'=>{'http://snomed.info/sct'=>['408467006', '394577000', '394578005', '421661004', '408462000', '394579002', '394804000', '394580004', '394803006', '408480009', '408454008', '394809005', '394592004', '394600006', '394601005', '394581000', '408478003', '394812008', '408444009', '394582007', '408475000', '410005002', '394583002', '419772000', '394584008', '408443003', '394802001', '394915009', '394814009', '394808002', '394811001', '408446006', '394586005', '394916005', '408472002', '394597005', '394598000', '394807007', '419192003', '408468001', '394593009', '394813003', '410001006', '394589003', '394591006', '394599008', '394649004', '408470005', '394585009', '394821009', '422191005', '394594003', '416304004', '418960008', '394882004', '394806003', '394588006', '408459003', '394607009', '419610006', '418058008', '420208008', '418652005', '418535003', '418862001', '419365004', '418002000', '419983000', '419170002', '419472004', '394539006', '420112009', '409968004', '394587001', '394913002', '408440000', '418112009', '419815003', '394914008', '408455009', '394602003', '408447002', '394810000', '408450004', '408476004', '408469009', '408466002', '408471009', '408464004', '408441001', '408465003', '394605001', '394608004', '408461007', '408460008', '394606000', '408449004', '418018006', '394604002', '394609007', '408474001', '394610002', '394611003', '408477008', '394801008', '408463005', '419321007', '394576009', '394590007', '409967009', '408448007', '419043006', '394612005', '394733009', '394732004']}, 'path'=>'Slot.specialty', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/c80-practice-codes'}},
        'appointmentType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/v2-0276'=>['ROUTINE', 'WALKIN', 'CHECKUP', 'FOLLOWUP', 'EMERGENCY']}, 'path'=>'Slot.appointmentType', 'type'=>'CodeableConcept', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://terminology.hl7.org/ValueSet/v2-0276'}},
        'schedule' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Schedule'], 'path'=>'Slot.schedule', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/slotstatus'=>['busy', 'free', 'busy-unavailable', 'busy-tentative', 'entered-in-error']}, 'path'=>'Slot.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/slotstatus'}},
        'start' => {'path'=>'Slot.start', 'type'=>'instant', 'min'=>1, 'max'=>1},
        'end' => {'path'=>'Slot.end', 'type'=>'instant', 'min'=>1, 'max'=>1},
        'overbooked' => {'path'=>'Slot.overbooked', 'type'=>'boolean', 'min'=>0, 'max'=>1},
        'comment' => {'path'=>'Slot.comment', 'type'=>'string', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :serviceCategory   # 0-* [ CodeableConcept ]
      attr_accessor :serviceType       # 0-* [ CodeableReference ]
      attr_accessor :specialty         # 0-* [ CodeableConcept ]
      attr_accessor :appointmentType   # 0-* [ CodeableConcept ]
      attr_accessor :schedule          # 1-1 Reference(Schedule)
      attr_accessor :status            # 1-1 code
      attr_accessor :start             # 1-1 instant
      attr_accessor :end               # 1-1 instant
      attr_accessor :overbooked        # 0-1 boolean
      attr_accessor :comment           # 0-1 string

      def resourceType
        'Slot'
      end
    end
  end
end