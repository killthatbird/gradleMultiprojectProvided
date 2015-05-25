import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.LineNumberReader;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

public class ExtractLog {
	private static Logger logger = LoggerFactory.getLogger(ExtractLog.class);

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
		if (args.length < 2) {
			logger.debug("Usage: <Program name> <text string> <input file> [text to ignore]");
			logger.debug("Supply the text string in exact case to extract from the input file name");
			logger.debug("It will read each line from the file and print out the line with the matching line");
		} else {
			File file = new File(args[1]);
			file.setReadOnly();
			String text = args[0];
			String ignoreText = null;
			if (args.length > 2) {
				ignoreText = args[2];
			}
			LineNumberReader reader = new LineNumberReader(new FileReader(file));
			String line = null;
			try {
				line = reader.readLine();
			} catch (IOException ex) {
				System.err.println("error " + ex.getMessage());
			}
			while (line != null) {
				if (line.contains(text)) {
					if (!line.contains(ignoreText)) {
						logger.debug(line);
					}
				}
				try {
					line = reader.readLine();
				} catch (IOException ex) {
					System.err.println("error " + ex.getMessage());
				}
			}
			reader.close();
		}
	}
}
