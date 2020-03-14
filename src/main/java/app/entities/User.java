package app.entities;

import java.io.IOException;

public class User {
    private String name;
    private String password;
    private String menu;

    public User() {
    }

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public User(String name, String password, String menu) {
        this.name = name;
        this.password = password;
        this.menu = menu;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void eval() {
        double nNum1 =  str2Num(name,menu);
        double nNum2 =  str2Num(password,menu);


        System.out.println(" " + nNum1 + nNum2);

        switch (menu){
            case "1":
                name = String.format("%f + %f = %f", nNum1, nNum2, (nNum1 + nNum2) );
                break;
            case "2":
                name = String.format("%f - %f = %f", nNum1, nNum2, (nNum1 - nNum2) );
                break;
            case "3":
                name = String.format("%f * %f = %f", nNum1, nNum2, (nNum1 * nNum2) );
                break;
            case "4":
                if ( nNum2 == 0 ) {
                    name = String.format("%f / %f = %s",  nNum1,  nNum2, "ошибка! деление на 0" );
                } else {
                    name = String.format("%f / %f = %f",  nNum1,  nNum2, (nNum1 / nNum2) );
                }

                break;
        }
        System.out.println(" " + name);
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", menu='" + menu + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        return password != null ? password.equals(user.password) : user.password == null;

    }

    @Override
    public int hashCode() {
        int result = name != null ? name.hashCode() : 0;
        result = 31 * result + (password != null ? password.hashCode() : 0);
        return result;
    }

    private double str2Num( String name, String menu) {
        double nNum = 0;
        try {
            //nNum = Integer.parseInt(name);
            nNum = Double.parseDouble(name);

        } catch ( NumberFormatException e) {
            switch (menu){
                case "1":
                    break;
                case "2":
                    break;
                case "3":
                    break;
                case "4":
                    nNum = 1;
                    break;
            }

        }
        return nNum;
    }
}