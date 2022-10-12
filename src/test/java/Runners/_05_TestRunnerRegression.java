package Runners;


import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions( // or oldugunda herhangi bir tanesi varsa çalıştırır
        // and oldugunda her ikisinde seneryada tag alarak olan senaryoları çalıştırır
        tags ="@Regression or @SmokeTest", // hangi seneryoalrda bu etiket varsa onlar çalıştırılacak
        features = {"src/test/java/FeatureFiles"},
        glue = {"StepDefinitions"}
)

public class _05_TestRunnerRegression extends AbstractTestNGCucumberTests {
} //browser tipi vermek için rapora ek parametre eklemek için sonra kullanacağız
