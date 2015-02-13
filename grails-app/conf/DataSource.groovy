dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            username = "root"
            password = "root1234"
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/test?useUnicode=yes&characterEncoding=UTF-8"
        }
        /*dataSource {
            username = "root"
            password = "ichigogogo"
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/test?useUnicode=yes&characterEncoding=UTF-8"
        }*/
    }
    test {
        dataSource {
            username = "root"
            password = "root1234"
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/test?useUnicode=yes&characterEncoding=UTF-8"
        }
        /*dataSource {
            username = "root"
            password = ""
            dbCreate = "update"
            url = "jdbc:mysql://localhost/user-detail?useUnicode=yes&characterEncoding=UTF-8"
        }*/

    }
    production {
        dataSource {
            username = "root"
            password = "adm@123"
            dbCreate = "update"
            url = "jdbc:mysql://localhost/test?useUnicode=yes&characterEncoding=UTF-8"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}