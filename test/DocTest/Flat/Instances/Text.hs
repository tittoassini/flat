
{-# LANGUAGE NoMonomorphismRestriction, ExtendedDefaultRules#-}
module DocTest.Flat.Instances.Text where
import qualified DocTest
import Test.Tasty(TestTree,testGroup)
import Flat.Instances.Text
import Flat.Instances.Base()
import Flat.Instances.Test
import qualified Data.Text             as T
import qualified Data.Text.Lazy             as TL
import Data.Word

tests :: IO TestTree
tests = testGroup "Flat.Instances.Text" <$> sequence [  DocTest.test "src/Flat/Instances/Text.hs:25" "[ExpectedLine [LineChunk \"(True,16,[1,0])\"]]" (DocTest.asPrint( tst $ T.pack "" )),  DocTest.test "src/Flat/Instances/Text.hs:28" "[ExpectedLine [LineChunk \"(True,120,[1,3,97,97,97,0])\"]]" (DocTest.asPrint( tst $ T.pack "aaa" )),  DocTest.test "src/Flat/Instances/Text.hs:31" "[ExpectedLine [LineChunk \"(True,120,[1,6,194,162,194,162,194,162,0])\"]]" (DocTest.asPrint( tst $ T.pack "¢¢¢" )),  DocTest.test "src/Flat/Instances/Text.hs:34" "[ExpectedLine [LineChunk \"(True,120,[1,9,230,151,165,230,151,165,230,151,165,0])\"]]" (DocTest.asPrint( tst $ T.pack "日日日" )),  DocTest.test "src/Flat/Instances/Text.hs:44" "[ExpectedLine [LineChunk \"True\"]]" (DocTest.asPrint( tst (T.pack "abc") == tst (TL.pack "abc") )),  DocTest.test "src/Flat/Instances/Text.hs:62" "[ExpectedLine [LineChunk \"True\"]]" (DocTest.asPrint( tst (UTF8Text $ T.pack "日日日") == tst (T.pack "日日日") ))]
