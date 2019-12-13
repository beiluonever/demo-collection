package net.pyma.demo.springsecurity.service;

import net.pyma.demo.springsecurity.entity.JwtUser;
import net.pyma.demo.springsecurity.entity.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by echisan on 2018/6/23
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {


    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = new User(1,"a","b","admin");
        return new JwtUser(user);
    }

}
