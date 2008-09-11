module Text.DescriptorProtos.ServiceOptions (ServiceOptions(..)) where
import Prelude ((+))
import qualified Prelude as P'
import qualified Text.ProtocolBuffers.Header as P'
 
data ServiceOptions = ServiceOptions{}
                    deriving (P'.Show, P'.Eq, P'.Ord, P'.Typeable)
 
instance P'.Mergeable ServiceOptions where
  mergeEmpty = ServiceOptions
  mergeAppend (ServiceOptions) (ServiceOptions) = ServiceOptions
 
instance P'.Default ServiceOptions where
  defaultValue = ServiceOptions
 
instance P'.Wire ServiceOptions where
  wireSize ft' (ServiceOptions)
    = case ft' of
        10 -> calc'Size
        11 -> calc'Size
    where
        calc'Size = 0
  wirePut ft' self'@(ServiceOptions)
    = case ft' of
        10 -> put'Fields
        11
          -> do
               P'.putSize (P'.wireSize 11 self')
               put'Fields
    where
        put'Fields
          = do
              P'.return ()
  wireGet ft'
    = case ft' of
        10 -> P'.getBareMessage update'Self
        11 -> P'.getMessage update'Self
    where
        update'Self field'Number old'Self
          = case field'Number of
              _ -> P'.unknownField field'Number
 
instance P'.MessageAPI msg' (msg' -> ServiceOptions) ServiceOptions where
  getVal m' f' = f' m'
 
instance P'.GPB ServiceOptions
 
instance P'.ReflectDescriptor ServiceOptions where
  reflectDescriptorInfo _
    = P'.read
        "DescriptorInfo {descName = ProtoName {haskellPrefix = \"Text\", parentModule = \"DescriptorProtos\", baseName = \"ServiceOptions\"}, descFilePath = [\"Text\",\"DescriptorProtos\",\"ServiceOptions.hs\"], isGroup = False, fields = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList []}"