package demo;
import java.util.HashMap;

public class userdemo {
    static HashMap<String, String> users = new HashMap<>();//内存数据库

    static {
        users.put("admin", "123456");
        users.put("2701170101", "2701170101");
        users.put("2701170102", "2701170102");
        users.put("2701170103", "2701170103");
        users.put("2701170104", "2701170104");
        users.put("2701170105", "2701170105");
        users.put("2701170106", "2701170106");
        users.put("2701170107", "2701170107");
        users.put("2701170108", "2701170108");
        users.put("2701170109", "2701170109");
        users.put("2701170110", "2701170110");
        users.put("2701170111", "2701170111");
        users.put("2701170112", "2701170112");
        users.put("2701170113", "2701170113");
        users.put("2701170114", "2701170114");
        users.put("2701170115", "2701170115");
        users.put("2701170116", "2701170116");
        users.put("2701170117", "2701170117");
        users.put("2701170118", "2701170118");
        users.put("2701170119", "2701170119");
        users.put("2701170120", "2701170120");
        users.put("2701170121", "2701170121");
        users.put("2701170122", "2701170122");
        users.put("2701170123", "2701170123");
        users.put("2701170124", "2701170124");
        users.put("2701170125", "2701170125");
        users.put("2701170126", "2701170126");
        users.put("2701170127", "2701170127");
        users.put("2701170128", "2701170128");
        users.put("2701170129", "2701170129");
        users.put("2701170130", "2701170130");
        users.put("2701170131", "2701170131");
        users.put("2701170132", "2701170132");
    }

    public static boolean register(String name, String pass) {
        if (users.containsKey(name) || name.trim().isEmpty()) {
            System.err.println("注册失败");
            return false;
        }
        users.put(name, pass);
        System.err.println("注册成功!!");
        return true;
    }

    public static boolean login(String user, String pass) {
        if (users.get(user) == null) {
            System.err.println("用户名不存在");
            return false;
        }
        if (!users.get(user).equals(pass)) {
            System.err.println("密码错误");
            return false;
        }
        System.err.println("登录成功");
        return true;
    }

    private static boolean updatePassword(String name, String oldPass, String newPass) {
        if (!login(name, oldPass)) {
            System.err.println("旧密码错误,修改失败");
            return false;

        }
        users.put(name, newPass);
        System.err.println("修改密码成功，请使用新密码登录");
        return true;
    }
}
