let NatOrString = (../imports.dhall).Kubernetes.NatOrString

let TLSConfig = ./TLSConfig.dhall

in  { Type =
        { namespace : Text
        , name : Text
        , port : NatOrString
        , scheme : Optional Text
        , pathPrefix : Optional Text
        , tlsConfig : Optional TLSConfig.Type
        , bearerTokenFile : Optional Text
        , apiVersion : Optional Text
        }
    , default =
      { scheme = None Text
      , pathPrefix = None Text
      , tlsConfig = None TLSConfig.Type
      , bearerTokenFile = None Text
      , apiVersion = None Text
      }
    }
