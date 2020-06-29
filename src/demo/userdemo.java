package demo;
import java.util.HashMap;
public class userdemo {
    static HashMap<String, String> users = new HashMap<>();
    public static boolean register(String name, String pass) {
        if (users.containsKey(name) || name.trim().isEmpty()) {
            System.err.println("注册失败");
            return false;
        }
        users.put(name, pass);
        System.err.println("用户不存在");
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
        System.err.println("登陆成功");
        return true;
    }

    private static boolean updatePassword(String name, String oldPass, String newPass) {
        if (!login(name, oldPass)) {
            System.err.println("旧密码错误，修改失败");
            return false;
        }
        users.put(name, newPass);
        {
            System.err.println("修改密码成功，请登录");
            return true;
        }
    }

    public static void main(String[] args) {
        register("tom", "123456");
        register("cat", "666666");
        System.out.println(login("tom", "123456"));
        System.out.println(login("cat", "666666"));
        System.out.println(updatePassword("tom", "123456", "654321"));
        System.out.println(login("tom", "123456"));
        System.out.println(login("tom", "654321"));
    }
}