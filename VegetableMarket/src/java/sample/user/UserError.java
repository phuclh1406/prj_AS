/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.user;

public class UserError {

    private String UserIDError;
    private String fullNameError;
    private String RoleIDError;
    private String passwordError;
    private String addressError;
    private String birthdayError;
    private String phoneError;
    private String mailError;
    private String confirmError;

    public UserError() {
        this.UserIDError = "";
        this.fullNameError = "";
        this.RoleIDError = "";
        this.passwordError = "";
        this.addressError = "";
        this.birthdayError = "";
        this.phoneError = "";
        this.mailError = "";
        this.confirmError = "";
    }

    public UserError(String UserIDError, String fullNameError, String RoleIDError, String passwordError, String addressError, String birthdayError, String phoneError, String mailError, String confirmError) {
        this.UserIDError = UserIDError;
        this.fullNameError = fullNameError;
        this.RoleIDError = RoleIDError;
        this.passwordError = passwordError;
        this.addressError = addressError;
        this.birthdayError = birthdayError;
        this.phoneError = phoneError;
        this.mailError = phoneError;
        this.confirmError = confirmError;
    }

    public String getUserIDError() {
        return UserIDError;
    }

    public void setUserIDError(String UserIDError) {
        this.UserIDError = UserIDError;
    }

    public String getFullNameError() {
        return fullNameError;
    }

    public void setFullNameError(String fullNameError) {
        this.fullNameError = fullNameError;
    }

    public String getRoleIDError() {
        return RoleIDError;
    }

    public void setRoleIDError(String RoleIDError) {
        this.RoleIDError = RoleIDError;
    }

    public String getPasswordError() {
        return passwordError;
    }

    public void setPasswordError(String passwordError) {
        this.passwordError = passwordError;
    }

    public String getConfirmError() {
        return confirmError;
    }

    public void setConfirmError(String confirmError) {
        this.confirmError = confirmError;
    }

    public String getAddressError() {
        return addressError;
    }

    public void setAddressError(String addressError) {
        this.addressError = addressError;
    }

    public String getBirthdayError() {
        return birthdayError;
    }

    public void setBirthdayError(String birthdayError) {
        this.birthdayError = birthdayError;
    }

    public String getPhoneError() {
        return phoneError;
    }

    public void setPhoneError(String phoneError) {
        this.phoneError = phoneError;
    }

    public String getMailError() {
        return mailError;
    }

    public void setMailError(String mailError) {
        this.mailError = mailError;
    }

}
