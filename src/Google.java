import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;


public class Google {

	/**
	 * @param args
	 * @throws InterruptedException 
	 * @throws Exception 
	 */
	public static void main(String[] args) throws InterruptedException  {
		WebDriver driver= new FirefoxDriver();
		//WebDriver driver = new ChromeDriver();
		 
		//WebDriver driver=new FirefoxDriver();
		driver.navigate().to("http://www.google.co.in");
		
		driver.findElement(By.linkText("Telugu")).click();  
        Thread.sleep(4000L); 
        driver.navigate().back(); 
        Thread.sleep(4000L); 
        driver.findElement(By.linkText("Hindi")).click();
		 
	}

}
