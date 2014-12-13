{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLinkElement
       (ghcjs_dom_html_link_element_set_disabled,
        htmlLinkElementSetDisabled,
        ghcjs_dom_html_link_element_get_disabled,
        htmlLinkElementGetDisabled,
        ghcjs_dom_html_link_element_set_charset, htmlLinkElementSetCharset,
        ghcjs_dom_html_link_element_get_charset, htmlLinkElementGetCharset,
        ghcjs_dom_html_link_element_set_href, htmlLinkElementSetHref,
        ghcjs_dom_html_link_element_get_href, htmlLinkElementGetHref,
        ghcjs_dom_html_link_element_set_hreflang,
        htmlLinkElementSetHreflang,
        ghcjs_dom_html_link_element_get_hreflang,
        htmlLinkElementGetHreflang, ghcjs_dom_html_link_element_set_media,
        htmlLinkElementSetMedia, ghcjs_dom_html_link_element_get_media,
        htmlLinkElementGetMedia, ghcjs_dom_html_link_element_set_rel,
        htmlLinkElementSetRel, ghcjs_dom_html_link_element_get_rel,
        htmlLinkElementGetRel, ghcjs_dom_html_link_element_set_rev,
        htmlLinkElementSetRev, ghcjs_dom_html_link_element_get_rev,
        htmlLinkElementGetRev, ghcjs_dom_html_link_element_set_target,
        htmlLinkElementSetTarget, ghcjs_dom_html_link_element_get_target,
        htmlLinkElementGetTarget, ghcjs_dom_html_link_element_get_sheet,
        htmlLinkElementGetSheet, ghcjs_dom_html_link_element_get_rel_list,
        htmlLinkElementGetRelList, HTMLLinkElement, IsHTMLLinkElement,
        castToHTMLLinkElement, gTypeHTMLLinkElement, toHTMLLinkElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_html_link_element_set_disabled ::
        JSRef HTMLLinkElement -> Bool -> IO ()
#else 
ghcjs_dom_html_link_element_set_disabled ::
                                           JSRef HTMLLinkElement -> Bool -> IO ()
ghcjs_dom_html_link_element_set_disabled = undefined
#endif
 
htmlLinkElementSetDisabled ::
                           (IsHTMLLinkElement self) => self -> Bool -> IO ()
htmlLinkElementSetDisabled self val
  = ghcjs_dom_html_link_element_set_disabled
      (unHTMLLinkElement (toHTMLLinkElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_html_link_element_get_disabled ::
        JSRef HTMLLinkElement -> IO Bool
#else 
ghcjs_dom_html_link_element_get_disabled ::
                                           JSRef HTMLLinkElement -> IO Bool
ghcjs_dom_html_link_element_get_disabled = undefined
#endif
 
htmlLinkElementGetDisabled ::
                           (IsHTMLLinkElement self) => self -> IO Bool
htmlLinkElementGetDisabled self
  = ghcjs_dom_html_link_element_get_disabled
      (unHTMLLinkElement (toHTMLLinkElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_html_link_element_set_charset ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_charset ::
                                          JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_charset = undefined
#endif
 
htmlLinkElementSetCharset ::
                          (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetCharset self val
  = ghcjs_dom_html_link_element_set_charset
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_link_element_get_charset ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_charset ::
                                          JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_charset = undefined
#endif
 
htmlLinkElementGetCharset ::
                          (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetCharset self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_charset
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"href\"] = $2;"
        ghcjs_dom_html_link_element_set_href ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_href ::
                                       JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_href = undefined
#endif
 
htmlLinkElementSetHref ::
                       (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetHref self val
  = ghcjs_dom_html_link_element_set_href
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_html_link_element_get_href ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_href ::
                                       JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_href = undefined
#endif
 
htmlLinkElementGetHref ::
                       (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetHref self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_href
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        ghcjs_dom_html_link_element_set_hreflang ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_hreflang ::
                                           JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_hreflang = undefined
#endif
 
htmlLinkElementSetHreflang ::
                           (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetHreflang self val
  = ghcjs_dom_html_link_element_set_hreflang
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"hreflang\"]"
        ghcjs_dom_html_link_element_get_hreflang ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_hreflang ::
                                           JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_hreflang = undefined
#endif
 
htmlLinkElementGetHreflang ::
                           (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetHreflang self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_hreflang
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_html_link_element_set_media ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_media ::
                                        JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_media = undefined
#endif
 
htmlLinkElementSetMedia ::
                        (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetMedia self val
  = ghcjs_dom_html_link_element_set_media
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_html_link_element_get_media ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_media ::
                                        JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_media = undefined
#endif
 
htmlLinkElementGetMedia ::
                        (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetMedia self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_media
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rel\"] = $2;"
        ghcjs_dom_html_link_element_set_rel ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_rel ::
                                      JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_rel = undefined
#endif
 
htmlLinkElementSetRel ::
                      (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetRel self val
  = ghcjs_dom_html_link_element_set_rel
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rel\"]"
        ghcjs_dom_html_link_element_get_rel ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_rel ::
                                      JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_rel = undefined
#endif
 
htmlLinkElementGetRel ::
                      (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetRel self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_rel
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rev\"] = $2;"
        ghcjs_dom_html_link_element_set_rev ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_rev ::
                                      JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_rev = undefined
#endif
 
htmlLinkElementSetRev ::
                      (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetRev self val
  = ghcjs_dom_html_link_element_set_rev
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rev\"]"
        ghcjs_dom_html_link_element_get_rev ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_rev ::
                                      JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_rev = undefined
#endif
 
htmlLinkElementGetRev ::
                      (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetRev self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_rev
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        ghcjs_dom_html_link_element_set_target ::
        JSRef HTMLLinkElement -> JSString -> IO ()
#else 
ghcjs_dom_html_link_element_set_target ::
                                         JSRef HTMLLinkElement -> JSString -> IO ()
ghcjs_dom_html_link_element_set_target = undefined
#endif
 
htmlLinkElementSetTarget ::
                         (IsHTMLLinkElement self, ToJSString val) => self -> val -> IO ()
htmlLinkElementSetTarget self val
  = ghcjs_dom_html_link_element_set_target
      (unHTMLLinkElement (toHTMLLinkElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_html_link_element_get_target ::
        JSRef HTMLLinkElement -> IO JSString
#else 
ghcjs_dom_html_link_element_get_target ::
                                         JSRef HTMLLinkElement -> IO JSString
ghcjs_dom_html_link_element_get_target = undefined
#endif
 
htmlLinkElementGetTarget ::
                         (IsHTMLLinkElement self, FromJSString result) => self -> IO result
htmlLinkElementGetTarget self
  = fromJSString <$>
      (ghcjs_dom_html_link_element_get_target
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"sheet\"]"
        ghcjs_dom_html_link_element_get_sheet ::
        JSRef HTMLLinkElement -> IO (JSRef StyleSheet)
#else 
ghcjs_dom_html_link_element_get_sheet ::
                                        JSRef HTMLLinkElement -> IO (JSRef StyleSheet)
ghcjs_dom_html_link_element_get_sheet = undefined
#endif
 
htmlLinkElementGetSheet ::
                        (IsHTMLLinkElement self) => self -> IO (Maybe StyleSheet)
htmlLinkElementGetSheet self
  = fmap StyleSheet . maybeJSNull <$>
      (ghcjs_dom_html_link_element_get_sheet
         (unHTMLLinkElement (toHTMLLinkElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"relList\"]"
        ghcjs_dom_html_link_element_get_rel_list ::
        JSRef HTMLLinkElement -> IO (JSRef DOMTokenList)
#else 
ghcjs_dom_html_link_element_get_rel_list ::
                                           JSRef HTMLLinkElement -> IO (JSRef DOMTokenList)
ghcjs_dom_html_link_element_get_rel_list = undefined
#endif
 
htmlLinkElementGetRelList ::
                          (IsHTMLLinkElement self) => self -> IO (Maybe DOMTokenList)
htmlLinkElementGetRelList self
  = fmap DOMTokenList . maybeJSNull <$>
      (ghcjs_dom_html_link_element_get_rel_list
         (unHTMLLinkElement (toHTMLLinkElement self)))
#else
module GHCJS.DOM.HTMLLinkElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLinkElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLinkElement
#endif
