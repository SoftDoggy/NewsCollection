package com.eiffai.bean.Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.HashMap;

/**
 * Created by Administrator on 2017/6/13.
 */
@WebFilter(filterName = "Filter")
public class Filter implements javax.servlet.Filter {
    private String encoding;
    private HashMap<String,String> params = new HashMap<String,String>();
    public void destroy() {
        System.out.println("end do the encoding filter!");
        params=null;
        encoding=null;
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
        System.out.println("before encoding " + encoding + " filter！");
        req.setCharacterEncoding(encoding);
        chain.doFilter(req, resp);
        System.out.println("after encoding " + encoding + " filter！");
        System.err.println("----------------------------------------");
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
