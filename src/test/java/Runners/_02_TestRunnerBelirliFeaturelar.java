package Runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;


@CucumberOptions (

 features = {"src/test/java/FeatureFiles/_02_Country.feature",
             "src/test/java/FeatureFiles/_02_Country.feature"
              } ,
         glue = {"StepDefinitions"}
//        dryRun = false// true oldugunda testi çalıştırma sadece feature lara
//           // ait steplerin varlıgını kontrol eder
//               // false oldugundda ise testi çalıştırır
)
public class _02_TestRunnerBelirliFeaturelar extends AbstractTestNGCucumberTests {
}
