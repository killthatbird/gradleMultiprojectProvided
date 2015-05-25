/**
 * ace2 C APIR 2015
 */
package au.com.apir;

import java.io.File;

import org.junit.Assert;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author Nargeso
 *
 */
public class ApirPropertiesTest {
	private Logger logger = LoggerFactory.getLogger(ApirPropertiesTest.class);

	public void test(String directoryPath) {
		File f = new File(directoryPath);
		Assert.assertTrue(f.isDirectory());
		logger.info("Test directory exists: " + directoryPath);
		Assert.assertFalse(directoryPath + " does not exist", !f.isDirectory());
	}

	@Test
	public void testAml() {
		logger.error("testAml - info");
		logger.debug("testAml - debug");
		test(ApirProperties.APIR_AML_PATH);
	}

	@Test
	public void testBase() {
		test(ApirProperties.APIR_BASE_PATH);
	}

	@Test
	public void testClientService() {
		test(ApirProperties.APIR_CLIENT_SERVICE_PATH);
	}

	@Test
	public void testDoc() {
		test(ApirProperties.APIR_DOCS_PATH);
	}

	@Test
	public void testDomaCom() {
		test(ApirProperties.APIR_DOMACOM_PATH);
	}

	@Test
	public void testDynamicform() {
		test(ApirProperties.APIR_DYNAMICFORM_PATH);
	}

	@Test
	public void testHK() {
		test(ApirProperties.APIR_HK_PATH);
	}

	@Test
	public void testLei() {
		test(ApirProperties.APIR_LEI_PATH);
	}

	@Test
	public void testNews() {
		test(ApirProperties.APIR_NEWS_PATH);
	}

	@Test
	public void testNonproduction() {
		// What's g: drive?!
		// test(ApirProperties.APIR_NON_PRODUCTION_ENVIRONMENT);
	}

	@Test
	public void testSpin() {
		test(ApirProperties.APIR_SPIN_PATH);
	}

	@Test
	public void testTemp() {
		test(ApirProperties.APIR_TEMP_DIR);
	}

	@Test
	public void testTemplate() {
		test(ApirProperties.APIR_TEMPLATE_PATH);
	}

	@Test
	public void testUpload() {
		test(ApirProperties.APIR_UPLOAD_DIR);
	}

}
