global class logoutclass {
 public PageReference logoutCommunity(){
        //if(UserInfo.getUserType() != 'Guest')
        String host1 = ApexPages.currentPage().getHeaders().get('Host');
        String url = 'https://'+host1+'/secur/logout.jsp';
        System.debug('Entering log out method:'+url);
        PageReference p = new PageReference(url);
        p.setRedirect(true);
        return p;
    
   // return null;
        }

  
}