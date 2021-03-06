{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSS
       (js_supports2, supports2, supports2_, js_supports, supports,
        supports_, js_escape, escape, escape_, CSS(..), gTypeCSS)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "($1[\"supports\"]($2, $3) ? 1 : 0)" js_supports2 ::
        CSS -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2 ::
          (MonadIO m, ToJSString property, ToJSString value) =>
            CSS -> property -> value -> m Bool
supports2 self property value
  = liftIO
      (js_supports2 self (toJSString property) (toJSString value))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports2_ ::
           (MonadIO m, ToJSString property, ToJSString value) =>
             CSS -> property -> value -> m ()
supports2_ self property value
  = liftIO
      (void (js_supports2 self (toJSString property) (toJSString value)))
 
foreign import javascript unsafe "($1[\"supports\"]($2) ? 1 : 0)"
        js_supports :: CSS -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports ::
         (MonadIO m, ToJSString conditionText) =>
           CSS -> conditionText -> m Bool
supports self conditionText
  = liftIO (js_supports self (toJSString conditionText))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
supports_ ::
          (MonadIO m, ToJSString conditionText) =>
            CSS -> conditionText -> m ()
supports_ self conditionText
  = liftIO (void (js_supports self (toJSString conditionText)))
 
foreign import javascript unsafe "$1[\"escape\"]($2)" js_escape ::
        CSS -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape ::
       (MonadIO m, ToJSString ident, FromJSString result) =>
         CSS -> ident -> m result
escape self ident
  = liftIO (fromJSString <$> (js_escape self (toJSString ident)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.escape Mozilla CSS.escape documentation> 
escape_ :: (MonadIO m, ToJSString ident) => CSS -> ident -> m ()
escape_ self ident
  = liftIO (void (js_escape self (toJSString ident)))