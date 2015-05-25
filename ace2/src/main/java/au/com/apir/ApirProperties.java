/**
 * ace2 C APIR 2015
 */
package au.com.apir;

/**
 * Set the application properties in one place (what a revelation!). Would be better suited to application.properties
 * file.
 * 
 * @author brookes
 *
 */
public class ApirProperties {
	public static final String FINANCE_MAIL_GROUP = "naana.owusu@apir.com.au";
	public static final String CODES_MAIL_GROUP = "clientservices@apir.com.au";

	public static final String APIR_BASE_PATH = "c:/www.public/";
	public static final String APIR_DOCS_PATH = APIR_BASE_PATH + "docs/";
	public static final String APIR_DYNAMICFORM_PATH = APIR_BASE_PATH + "dynamicform/";
	public static final String APIR_SPIN_PATH = APIR_BASE_PATH + "spin/";
	public static final String APIR_AML_PATH = APIR_BASE_PATH + "aml/";
	public static final String APIR_TEMPLATE_PATH = APIR_BASE_PATH + "templates/";
	public static final String APIR_TEMP_DIR = APIR_BASE_PATH + "temp/";
	public static final String APIR_LEI_PATH = APIR_BASE_PATH + "lei/";
	public static final String APIR_UPLOAD_DIR = APIR_DYNAMICFORM_PATH + "upload/";
	public static final String APIR_NEWS_PATH = APIR_BASE_PATH + "news/";
	public static final String LEI_PROPERTIES_LOCATION = APIR_BASE_PATH + "lei-setup/lei.properties/";
	public static final String APIR_HK_PATH = APIR_BASE_PATH + "apirhk/";
	public static final String APIR_CLIENT_SERVICE_PATH = APIR_BASE_PATH + "clientservices/";
	public static final String APIR_NON_PRODUCTION_ENVIRONMENT = "g:/www.public/pds";
	public static final String APIR_DOMACOM_PATH = APIR_BASE_PATH + "domacom/";

	public static final String TAS_MAILING_BASE = "\\\\app3\\c$\\www.public\\jams-temp\\";
	public static final String TAS_MAILING_LIST = TAS_MAILING_BASE + "TAS-MASTER-MAIL.csv";
	public static final String TAS_MAILING_LIST_TEMP = TAS_MAILING_BASE + "TAS-MASTER-MAIL-TEMP.csv";
	public static final String TAS_MAILING_LIST_CONFLICTS = TAS_MAILING_BASE + "TAS-CONFLICT-MAIL.csv";
	public static final String TAS_WEB_USER_LIST = TAS_MAILING_BASE + "WEB-USER-LIST.csv";
	public static final String TAS_CONFLICT_TEMP = TAS_MAILING_BASE + "TAS-CONFLICT-MAIL-TEMP.csv";

}
