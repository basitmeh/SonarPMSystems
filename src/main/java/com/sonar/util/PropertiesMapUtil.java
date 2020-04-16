package com.sonar.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.sonar.auth.Login;

public class PropertiesMapUtil {

    private PropertiesMapUtil() {

    }

    static Map<String, String> mapString = new HashMap<>();

    public static Map<String, String> getPropertyMap() {
        Properties properties = new Properties();
        if (mapString.isEmpty()) {
            synchronized (PropertiesMapUtil.class) {
                if (mapString.isEmpty()) {
                    try (InputStream is = Login.class.getClassLoader()
                            .getResourceAsStream("application.properties")) {
                        properties.load(is);
                        @SuppressWarnings("unchecked")
                        Enumeration<String> enums = (Enumeration<String>) properties
                                .propertyNames();
                        while (enums.hasMoreElements()) {
                            String key = enums.nextElement();
                            String value = properties.getProperty(key);
                            mapString.put(key, value);
                        }
                    } catch (IOException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                }
            }
        }
        return mapString;
    }
}
