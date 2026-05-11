module FHIR
  module R4
    class TestReport < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['identifier', 'issued', 'participant', 'result', 'tester', 'testscript']
      METADATA = {
        'id' => {'path'=>'TestReport.id', 'type'=>'id', 'min'=>0, 'max'=>1},
        'meta' => {'path'=>'TestReport.meta', 'type'=>'Meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'path'=>'TestReport.implicitRules', 'type'=>'uri', 'min'=>0, 'max'=>1},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['ar', 'bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hi', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pa', 'pl', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-RS', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'path'=>'TestReport.language', 'type'=>'code', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'text' => {'path'=>'TestReport.text', 'type'=>'Narrative', 'min'=>0, 'max'=>1},
        'contained' => {'path'=>'TestReport.contained', 'type'=>'Resource', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'path'=>'TestReport.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'path'=>'TestReport.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'path'=>'TestReport.identifier', 'type'=>'Identifier', 'min'=>0, 'max'=>1},
        'name' => {'path'=>'TestReport.name', 'type'=>'string', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/report-status-codes'=>['completed', 'in-progress', 'waiting', 'stopped', 'entered-in-error']}, 'path'=>'TestReport.status', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-status-codes'}},
        'testScript' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/TestScript'], 'path'=>'TestReport.testScript', 'type'=>'Reference', 'min'=>1, 'max'=>1},
        'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-result-codes'=>['pass', 'fail', 'pending']}, 'path'=>'TestReport.result', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-result-codes'}},
        'score' => {'path'=>'TestReport.score', 'type'=>'decimal', 'min'=>0, 'max'=>1},
        'tester' => {'path'=>'TestReport.tester', 'type'=>'string', 'min'=>0, 'max'=>1},
        'issued' => {'path'=>'TestReport.issued', 'type'=>'dateTime', 'min'=>0, 'max'=>1},
        'participant' => {'path'=>'TestReport.participant', 'type'=>'TestReport::Participant', 'min'=>0, 'max'=>Float::INFINITY},
        'setup' => {'path'=>'TestReport.setup', 'type'=>'TestReport::Setup', 'min'=>0, 'max'=>1},
        'test' => {'path'=>'TestReport.test', 'type'=>'TestReport::Test', 'min'=>0, 'max'=>Float::INFINITY},
        'teardown' => {'path'=>'TestReport.teardown', 'type'=>'TestReport::Teardown', 'min'=>0, 'max'=>1}
      }

      class Participant < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Participant.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Participant.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Participant.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/report-participant-type'=>['test-engine', 'client', 'server']}, 'path'=>'Participant.type', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-participant-type'}},
          'uri' => {'path'=>'Participant.uri', 'type'=>'uri', 'min'=>1, 'max'=>1},
          'display' => {'path'=>'Participant.display', 'type'=>'string', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :uri               # 1-1 uri
        attr_accessor :display           # 0-1 string
      end

      class Setup < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Setup.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Setup.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Setup.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'path'=>'Setup.action', 'type'=>'TestReport::Setup::Action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Action.operation', 'type'=>'TestReport::Setup::Action::Operation', 'min'=>0, 'max'=>1},
            'assert' => {'path'=>'Action.assert', 'type'=>'TestReport::Setup::Action::Assert', 'min'=>0, 'max'=>1}
          }

          class Operation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Operation.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Operation.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Operation.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-action-result-codes'=>['pass', 'skip', 'fail', 'warning', 'error']}, 'path'=>'Operation.result', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-action-result-codes'}},
              'message' => {'path'=>'Operation.message', 'type'=>'markdown', 'min'=>0, 'max'=>1},
              'detail' => {'path'=>'Operation.detail', 'type'=>'uri', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :result            # 1-1 code
            attr_accessor :message           # 0-1 markdown
            attr_accessor :detail            # 0-1 uri
          end

          class Assert < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'path'=>'Assert.id', 'type'=>'string', 'min'=>0, 'max'=>1},
              'extension' => {'path'=>'Assert.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'path'=>'Assert.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
              'result' => {'valid_codes'=>{'http://hl7.org/fhir/report-action-result-codes'=>['pass', 'skip', 'fail', 'warning', 'error']}, 'path'=>'Assert.result', 'type'=>'code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/report-action-result-codes'}},
              'message' => {'path'=>'Assert.message', 'type'=>'markdown', 'min'=>0, 'max'=>1},
              'detail' => {'path'=>'Assert.detail', 'type'=>'string', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :result            # 1-1 code
            attr_accessor :message           # 0-1 markdown
            attr_accessor :detail            # 0-1 string
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestReport::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestReport::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestReport::Setup::Action ]
      end

      class Test < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Test.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Test.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Test.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'path'=>'Test.name', 'type'=>'string', 'min'=>0, 'max'=>1},
          'description' => {'path'=>'Test.description', 'type'=>'string', 'min'=>0, 'max'=>1},
          'action' => {'path'=>'Test.action', 'type'=>'TestReport::Test::Action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Action.operation', 'type'=>'TestReport::Setup::Action::Operation', 'min'=>0, 'max'=>1},
            'assert' => {'path'=>'Action.assert', 'type'=>'TestReport::Setup::Action::Assert', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 0-1 TestReport::Setup::Action::Operation
          attr_accessor :assert            # 0-1 TestReport::Setup::Action::Assert
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 0-1 string
        attr_accessor :description       # 0-1 string
        attr_accessor :action            # 1-* [ TestReport::Test::Action ]
      end

      class Teardown < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'path'=>'Teardown.id', 'type'=>'string', 'min'=>0, 'max'=>1},
          'extension' => {'path'=>'Teardown.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'path'=>'Teardown.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
          'action' => {'path'=>'Teardown.action', 'type'=>'TestReport::Teardown::Action', 'min'=>1, 'max'=>Float::INFINITY}
        }

        class Action < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'path'=>'Action.id', 'type'=>'string', 'min'=>0, 'max'=>1},
            'extension' => {'path'=>'Action.extension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'path'=>'Action.modifierExtension', 'type'=>'Extension', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'path'=>'Action.operation', 'type'=>'TestReport::Setup::Action::Operation', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :operation         # 1-1 TestReport::Setup::Action::Operation
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :action            # 1-* [ TestReport::Teardown::Action ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-1 Identifier
      attr_accessor :name              # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :testScript        # 1-1 Reference(TestScript)
      attr_accessor :result            # 1-1 code
      attr_accessor :score             # 0-1 decimal
      attr_accessor :tester            # 0-1 string
      attr_accessor :issued            # 0-1 dateTime
      attr_accessor :participant       # 0-* [ TestReport::Participant ]
      attr_accessor :setup             # 0-1 TestReport::Setup
      attr_accessor :test              # 0-* [ TestReport::Test ]
      attr_accessor :teardown          # 0-1 TestReport::Teardown

      def resourceType
        'TestReport'
      end
    end
  end
  TestReport = FHIR::R4::TestReport
end