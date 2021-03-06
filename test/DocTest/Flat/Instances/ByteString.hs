
{-# LANGUAGE NoMonomorphismRestriction, ExtendedDefaultRules#-}
module DocTest.Flat.Instances.ByteString where
import qualified DocTest
import Test.Tasty(TestTree,testGroup)
import Flat.Instances.ByteString
import Flat.Instances.Test
import Flat.Instances.Base
import qualified Data.ByteString               as B
import qualified Data.ByteString.Lazy          as L
import qualified Data.ByteString.Short         as SBS

tests :: IO TestTree
tests = testGroup "Flat.Instances.ByteString" <$> sequence [  DocTest.test "src/Flat/Instances/ByteString.hs:39" "[ExpectedLine [LineChunk \"(True,48,[1,3,11,22,33,0])\"]]" (DocTest.asPrint( tst (B.pack [11,22,33]) )),  DocTest.test "src/Flat/Instances/ByteString.hs:52" "[ExpectedLine [LineChunk \"(True,16,[1,0])\"]]" (DocTest.asPrint( tst (B.pack []) )),  DocTest.test "src/Flat/Instances/ByteString.hs:57" "[ExpectedLine [LineChunk \"(True,51,[65,3,11,22,33,0])\"]]" (DocTest.asPrint( tst ((False,True,False,B.pack [11,22,33])) )),  DocTest.test "src/Flat/Instances/ByteString.hs:62" "[ExpectedLine [LineChunk \"True\"]]" (DocTest.asPrint( all (tst (B.pack [55]) ==) [tst (L.pack [55]),tst (SBS.pack [55])] )),  DocTest.test "src/Flat/Instances/ByteString.hs:71" "[ExpectedLine [LineChunk \"(True,51,[65,3,11,22,33,0])\"]]" (DocTest.asPrint( tst ((False,True,False,L.pack [11,22,33])) )),  DocTest.test "src/Flat/Instances/ByteString.hs:80" "[ExpectedLine [LineChunk \"(True,51,[65,3,11,22,33,0])\"]]" (DocTest.asPrint( tst ((False,True,False,SBS.pack [11,22,33])) ))]
