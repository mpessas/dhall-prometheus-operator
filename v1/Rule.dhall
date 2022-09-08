let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

let NatOrString = imports.Kubernetes.NatOrString

let Rule =
      { Type =
          { record : Optional Text
          , alert : Optional Text
          , expr : NatOrString
          , for : Optional Text
          , labels : Optional (Map Text Text)
          , annotations : Optional (Map Text Text)
          }
      , default =
        { record = None Text
        , alert = None Text
        , for = None Text
        , labels = None (Map Text Text)
        , annotations = None (Map Text Text)
        }
      }

let test = Rule::{ expr = NatOrString.String "example" }

in  Rule
