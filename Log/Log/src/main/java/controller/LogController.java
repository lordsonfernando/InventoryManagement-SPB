package controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import model.LogFile;
import model.MaterialsLog;
import model.User;
import repository.LogRepository;
import repository.MaterialRepo;
import repository.UserRepository;

@RestController
public class LogController {

	/**
	 * User Repository Object Variable to access User table
	 * 
	 */
	@Autowired
	UserRepository userRepository;
	/**
	 * Material Repository variable to access Material table
	 * 
	 */
	@Autowired
	MaterialRepo materials;
	
	@Autowired
	LogRepository logrepo;

	/**
	 * login method
	 * 
	 * @param user
	 * @return
	 */

	private String USERID;

	@RequestMapping("/login")
	public ModelAndView login(User user) {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@RequestMapping("/home")
	public ModelAndView view(ModelMap mapModel, User userObj) {
		ModelAndView modelAndView = new ModelAndView("loginalert");
		String userId, databaseId;
		String userPassword, databasePassword, userRole;
		userId = userObj.getId();
		USERID = userObj.getId();
		userPassword = userObj.getPassword();
		List<User> users = userRepository.findAll();
		for (int i = 0; i < users.size(); i++) {
			databaseId = users.get(i).getId();
			if ((userId.equals(databaseId))) {
				databasePassword = users.get(i).getPassword();
				if (userPassword.equals(databasePassword)) {
					userRole = users.get(i).getRole();
					if (userRole.equalsIgnoreCase("security")) {
						ModelAndView model1 = new ModelAndView("newaddmaterial");
						model1.addObject("security", userObj);
						return model1;
					} else if (userRole.equalsIgnoreCase("admin")) {
						ModelAndView model2 = new ModelAndView("adminlogin");
						return model2;
					} else {
						return modelAndView;
					}
				} else {
					ModelAndView model3 = new ModelAndView("loginalert");
					return model3;
				}
			
			}
		}
		return modelAndView;
	}
	
	
	@RequestMapping("/user")
	public ModelAndView userManagement() {
		ModelAndView mv = new ModelAndView("user");
		return mv;
	}

	@RequestMapping("/security")
	public ModelAndView user() {
		ModelAndView mv = new ModelAndView("newaddmaterial");
		return mv;
	}

	@RequestMapping("/material")
	public ModelAndView materialManagement() {
		ModelAndView mv = new ModelAndView("material");
		return mv;
	}
	
	/*@PostMapping("/search")
	public ModelAndView createUser() {
		ModelAndView modelAndView = new ModelAndView("date");

		return modelAndView;
	}*/

	@PostMapping("/addr")
	public ModelAndView addUsers(User userObj, HttpServletRequest request,LogFile logfile) {
		ModelAndView modelAndView = new ModelAndView("user");
		String databaseId,databasePassword;
		String userId = (String) request.getParameter("id");
		String password = (String) request.getParameter("password");
		List<User> users = userRepository.findAll();
		for (int i = 0; i < users.size(); i++) {
			databaseId = users.get(i).getId();
			if ((userId.equals(databaseId))) 
			{
				ModelAndView modelAndView2 = new ModelAndView("alert");
				return modelAndView2;
					
			}
		}
					userRepository.save(userObj);
					ModelAndView modelAndView1 = new ModelAndView("alertadd");
					return modelAndView1;				
}


	/**
	 * Delete the user details
	 * 
	 * @param user
	 * @return
	 */
	@PostMapping("/delete")
	public ModelAndView deleteUsers(User user,HttpServletRequest request) {
		
		String databaseId;
		String userId = (String) request.getParameter("id");
		List<User> users = userRepository.findAll();
		for (int i = 0; i < users.size(); i++) {
			databaseId = users.get(i).getId();
			if ((userId.equals(databaseId))) 
			{
				    userRepository.deleteUsers(userId);
					ModelAndView modelAndView1 = new ModelAndView("deletealert");
					return modelAndView1;	
					
			}
		}
		
		ModelAndView modelAndView2 = new ModelAndView("notalert");
		return modelAndView2;	
	}

	
	@RequestMapping("/find")
	public ModelAndView findAll(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("material");
		List<MaterialsLog> materiallog = new ArrayList<MaterialsLog>();
		materiallog = materials.findAll();

		model.addObject("materiallog", materiallog);

		System.out.println("model=" + model);

		return model;

	}
	@RequestMapping("/securityfind")
	public ModelAndView secfindAll(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("securityview");
		List<MaterialsLog> materiallog = new ArrayList<MaterialsLog>();
		materiallog = materials.findAll();

		model.addObject("materiallog", materiallog);

		System.out.println("model=" + model);

		return model;

	}
	
	@RequestMapping("/finduser")
	public ModelAndView findUser(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("user");
		List<User> users = new ArrayList<User>();
		users = userRepository.findAll();

		model.addObject("users", users);

		//System.out.println("model=" + model);

		return model;

	}
	
	@RequestMapping("/adminfirstpage")
	public ModelAndView firstpage(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("adminlogin");
	    return model;
	}
	    
	@RequestMapping("/addUser")
	public ModelAndView addUser(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("Adduser");
	    return model;

	}
	@RequestMapping("/updateUser")
	public ModelAndView updateUser(ModelMap mapModel,HttpServletRequest request, User user) {
			String databaseId;
			String userId = (String) request.getParameter("id");
			String password = (String) request.getParameter("password");
			List<User> users = userRepository.findAll();
			for (int i = 0; i < users.size(); i++) {
				databaseId = users.get(i).getId();
				if ((userId.equals(databaseId))) 
				{
					    userRepository.updateUser(userId,password);
						ModelAndView modelAndView1 = new ModelAndView("updatealert");
						return modelAndView1;	
						
				}
			}
			
			ModelAndView modelAndView2 = new ModelAndView("notalert");
			return modelAndView2;
			           			
	}

	@RequestMapping("/finddate")
	public ModelAndView findDate(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("/findall");
		List<MaterialsLog> materiallog = new ArrayList<MaterialsLog>();
		materiallog = materials.findAll();

		model.addObject("materiallog", materiallog);

		System.out.println("model=" + model);

		return model;

	}
	
	@RequestMapping("/securityview")
	public ModelAndView securityview(ModelMap mapModel) {
		ModelAndView model = new ModelAndView("/findall");
		List<MaterialsLog> materiallog = new ArrayList<MaterialsLog>();
		materiallog = materials.findAll();

		model.addObject("materiallog", materiallog);

		System.out.println("model=" + model);

		return model;

	}
	@RequestMapping("/inreturn")
	public ModelAndView addinreturn(MaterialsLog mlog, HttpServletRequest request, User user,ModelMap map) {

		ModelAndView mv = new ModelAndView("maddalert");
		Date objDate = new Date();
		String inExpectedOutDate = (String) request.getParameter("inExpectedOutDate");
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date;
		try {

			date = dateFormat.parse(inExpectedOutDate);
			
			mlog.setInExpectedOutDate(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Date Date = new Date();
		mlog.setInDate(Date);
		String strDateFormat = "hh:mm:ss";
		DateFormat dte = new SimpleDateFormat(strDateFormat);
		String fdate = dte.format(objDate);
		mlog.setInTime(fdate);
		mlog.setInSecurityId(USERID);
		mlog.setTransactionType("Inward Returnable");
		materials.save(mlog);
		return mv;
	}

	@RequestMapping("/addinnonreturn")
	public ModelAndView addinnonreturn(MaterialsLog mlog, HttpServletRequest request, User user) {

		ModelAndView mv = new ModelAndView("maddalert");
		Date objDate = new Date();
		Date Date = new Date();
		mlog.setInDate(Date);
		String strDateFormat = "hh:mm:ss";
		DateFormat dte = new SimpleDateFormat(strDateFormat);
		String fdate = dte.format(objDate);
		mlog.setInTime(fdate);
		mlog.setInSecurityId(USERID);
		mlog.setTransactionType("Inward Non Returnable");
		materials.save(mlog);
		return mv;
	}

	@RequestMapping("/addoutreturn")
	public ModelAndView addoutreturn(MaterialsLog mlog, HttpServletRequest request, User user) throws ParseException {
		ModelAndView mv = new ModelAndView("maddalert");
		Date objDate = new Date();
		String outExpectedInDate = (String) request.getParameter("outExpectedInDate");
		String outSupplierName = request.getParameter("outSupplierName");
		String outSupplierIdType = request.getParameter("outSupplierIdType");
		String outSupplierIdNumber = request.getParameter("outSupplierIdNumber");
		String outSupplierAddress = request.getParameter("outSupplierAddress");
		String outgpdcNumber = request.getParameter("outgpdcNumber");
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
		Date date = dateFormat.parse(outExpectedInDate);

		String ExpectedInDate = dateFormat.format(date);

		String sno1 = request.getParameter("sno");
		int sno = Integer.parseInt(sno1);

		Date Date = new Date();

		SimpleDateFormat outDateFormat = new SimpleDateFormat("dd/MM/yyyy");

		String outDate = outDateFormat.format(Date);

		String strDateFormat = "hh:mm:ss";
		DateFormat dte = new SimpleDateFormat(strDateFormat);
		String outTime = dte.format(objDate);

		String outSecurityId = USERID;
		String transactionType = "Outward Returnable";
		materials.updateOutReturn(sno, outSupplierName, outSupplierIdType, outSupplierIdNumber, outSupplierAddress,
				outgpdcNumber, outTime, outSecurityId, transactionType, ExpectedInDate, outDate);
		return mv;

		
	}

	@RequestMapping("/addoutnonreturn")
	public ModelAndView addoutnonreturn(MaterialsLog mlog, HttpServletRequest request, User user) {
		ModelAndView mv = new ModelAndView("maddalert");
		Date objDate = new Date();
	
		String outSupplierName = request.getParameter("outSupplierName");
		String outSupplierIdType = request.getParameter("outSupplierIdType");
		String outSupplierIdNumber = request.getParameter("outSupplierIdNumber");
		String outSupplierAddress = request.getParameter("outSupplierAddress");
		String outgpdcNumber = request.getParameter("outgpdcNumber");
		String senderId = request.getParameter("senderId");

		String sno1 = request.getParameter("sno");
		int sno = Integer.parseInt(sno1);

		Date Date = new Date();

		SimpleDateFormat outDateFormat = new SimpleDateFormat("dd/MM/yyyy");

		String outDate = outDateFormat.format(Date);

		String strDateFormat = "hh:mm:ss";
		DateFormat dte = new SimpleDateFormat(strDateFormat);
		String outTime = dte.format(objDate);

		String outSecurityId = USERID;
		String transactionType = "Outward Non Returnable";
		materials.updateOutNonReturn(sno, outSupplierName, outSupplierIdType, outSupplierIdNumber, outSupplierAddress,
				outgpdcNumber, outTime, outSecurityId, transactionType,outDate,senderId);
		return mv;

	}

	/*@RequestMapping("/searchdate")
	public ModelAndView searchDate(MaterialsLog mlog, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("findall");
		String outExpectedInDate = (String) request.getParameter("outExpectedInDate");
		System.out.println(outExpectedInDate);
		
	   if(outExpectedInDate=="")
	   {
		   ModelAndView model = new ModelAndView("datealert"); 
		   return model;
	   }
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
		Date date = null;
		try {
			date = dateFormat.parse(outExpectedInDate);
			System.out.println("1" + date);

		} catch (ParseException e) {
			e.printStackTrace();
		}

		SimpleDateFormat dt1 = new SimpleDateFormat("mm/dd/yyyy");

		String fdate = dt1.format(date);
		List<MaterialsLog> materiallog = materials.findByDate(fdate);
		System.out.println("2" + fdate);

		mv.addObject("materiallog", materiallog);
		return mv;

	}*/

	
	@RequestMapping("/dateSearch")
	public ModelAndView dateSearch(MaterialsLog mlog, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("findall");
		String fromdate = (String) request.getParameter("fromDate");
		String todate = (String) request.getParameter("toDate");
		System.out.println(fromdate);
		if(fromdate=="")
		   {
			   ModelAndView model = new ModelAndView("datealert"); 
			   return model;
		   }
		if(todate=="")
		{
			 ModelAndView model = new ModelAndView("datealert"); 
			   return model;
		}
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
		Date date = null;
		Date date1 = null;
		try {
			date = dateFormat.parse(fromdate);
			date1 = dateFormat.parse(todate);
			System.out.println("1" + date);

		} catch (ParseException e) {
			e.printStackTrace();
		}

		SimpleDateFormat dateformat = new SimpleDateFormat("dd/mm/yyyy");

		String fdate = dateformat.format(date);
		String tdate = dateformat.format(date1);
		List<MaterialsLog> materiallog = materials.findMaterialByDate(fdate,tdate);
		mv.addObject("materiallog", materiallog);
		return mv;

	}
	
	
	@RequestMapping("/findall")
	public ModelAndView findall(User user) {
		ModelAndView mv = new ModelAndView("findall");
		return mv;
	}

	@RequestMapping("/typeSearch")
	public ModelAndView typeSearch(MaterialsLog mlog, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("findall");
		String typeSearch = (String) request.getParameter("type");
		if(typeSearch.equalsIgnoreCase("InwardReturnable"))
		{
			List<MaterialsLog> materiallog = materials.findMaterialByType("Inward Returnable");
			mv.addObject("materiallog", materiallog);
		}
		else if(typeSearch.equalsIgnoreCase("OutwardReturnable"))
		{
			List<MaterialsLog> materiallog = materials.findMaterialByType("Outward Returnable");
			mv.addObject("materiallog", materiallog);
		}
		else if(typeSearch.equalsIgnoreCase("OutwardNonReturnable"))
		{
			List<MaterialsLog> materiallog = materials.findMaterialByType("Outward Non Returnable");
			mv.addObject("materiallog", materiallog);
		}
		else if(typeSearch.equalsIgnoreCase("inwardNonReturnable"))
		{
			List<MaterialsLog> materiallog = materials.findMaterialByType("Inward Non Returnable");
			mv.addObject("materiallog", materiallog);
		}
		else if(typeSearch.equalsIgnoreCase(""))
		{
			ModelAndView mv1 = new ModelAndView("findall");
			return mv1;
		}
		else
		{
			List<MaterialsLog> materiallog = materials.findAll();
			mv.addObject("materiallog", materiallog);	
		}
		return mv;

	}	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*
		@RequestMapping("/materialSearchDate")
		public ModelAndView materialSearchDate(MaterialsLog mlog, HttpServletRequest request) {
			ModelAndView mv = new ModelAndView("secfindall"); 
				String dateSearch = (String) request.getParameter("dateSearch");
				System.out.println(dateSearch);
				SimpleDateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
				Date date = null;
				try {
					date = dateFormat.parse(dateSearch);
					System.out.println("1" + date);

				} catch (ParseException e) {
					e.printStackTrace();
				}

				SimpleDateFormat dt1 = new SimpleDateFormat("dd/mm/yyyy");

			String fdate = dt1.format(date);	
			List<MaterialsLog> materiallog = materials.findMaterialBySearchDate(fdate); 
			//System.out.println("2" + fdate);

			mv.addObject("materiallog", materiallog);
			return mv;*/

		}
		
		
		
		
		
	

