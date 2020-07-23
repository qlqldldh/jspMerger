package com.mylibrary.book.user.vo;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserDTO extends User {
	private String email;
	
	public UserDTO(String username, String password, 
			boolean enabled, boolean accountNonExpired,
			boolean credentialsNonExpired, 
			boolean accountNonLocked, 
			Collection<? extends GrantedAuthority> authorities,
			String email) {
		super(username, password, enabled, accountNonExpired
				, credentialsNonExpired, accountNonLocked
				, authorities);
		this.email = email;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserDTO [email=" + email + "]";
	}
	

}
