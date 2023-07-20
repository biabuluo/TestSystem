import com.alibaba.druid.pool.DruidDataSource;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author 小宇
 * @date {2023}-{07}-{10}:{8:59}
 * @preference: 类：大驼峰 方法：蛇形 变量：全小写
 * @description:
 */
public class datasource {
    //code
    //创建连接池
    //获取连接对象
    public static void main(String[] args) throws SQLException {
        //Spring来管理连接池：不修改源代码，不能使用注解方式、只能使用<bean方式>

        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setUsername("root");
        druidDataSource.setPassword("2020101642");
        //设置驱动
        druidDataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        //设置连接
        druidDataSource.setUrl("jdbc:mysql://localhost:3306/数据库名");

        //优化
        druidDataSource.setMaxActive(10);
        druidDataSource.setInitialSize(2);
        //最大等待时间
        druidDataSource.setMaxWait(2000);
        //最小空闲数量
        druidDataSource.setMinIdle(2);

        //test
        for (int i=1;i<10;i++){
            Connection conn =druidDataSource.getConnection();
            System.out.println(conn);
        }
    }
}
