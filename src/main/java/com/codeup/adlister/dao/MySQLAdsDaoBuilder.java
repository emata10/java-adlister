package com.codeup.adlister.dao;

import javax.servlet.jsp.jstl.core.Config;

public class MySQLAdsDaoBuilder {
    private Config config;

    public MySQLAdsDaoBuilder setConfig(Config config) {
        this.config = config;
        return this;
    }

    public MySQLAdsDao createMySQLAdsDao() {
        return new MySQLAdsDao(config);
    }
}