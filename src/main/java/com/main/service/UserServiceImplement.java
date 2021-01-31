package com.main.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.dao.UserDao;
import com.main.model.BloodBankRegister;
import com.main.model.DonateBlood;
import com.main.model.Login;
import com.main.model.RequestBlood;

@Service
@Transactional
public class UserServiceImplement implements UserService {

	private static Logger log = Logger.getLogger(UserServiceImplement.class);
	@Autowired
	private UserDao userDao;

	public void saveUser(BloodBankRegister b) {
		// TODO Auto-generated method stub
		log.info("Invoking Dao Saveuser");
		userDao.saveUser(b);
	}

	public List<BloodBankRegister> availableList() {
		// TODO Auto-generated method stub
		log.info("Invoking Dao Fetch");
		List<BloodBankRegister> availablelist = userDao.availableList();
		return availablelist;
	}

	public String checkUser(Login l) {
		log.info("Invoking Dao Check User");
		return userDao.checkUser(l);

	}

	public void saveRequestBloodDetails(RequestBlood rb) {
		// TODO Auto-generated method stub
		log.info("Invoking Dao saveRequestor Method");
		userDao.saveRequestBloodDetails(rb);
	}

	public void saveDonateBloodDetails(DonateBlood db) {
		// TODO Auto-generated method stub
		log.info("Invoking Dao saveDonor Method");
		userDao.saveDonateBloodDetails(db);
	}

	@Override
	public List<DonateBlood> donorList() {
		// TODO Auto-generated method stub
		log.info("Invoking Dao fetchDonor Method");
		List<DonateBlood> dlist = userDao.donorList();
		return dlist;

	}

	@Override
	public List<RequestBlood> requestorList() {
		// TODO Auto-generated method stub
		log.info("Invoking Dao fetechRequestor Method");
		List<RequestBlood> rlist = userDao.requestorList();
		return rlist;
	}

	@Override
	public void acceptStatus(Integer rid) {
		log.info("Invoking Dao RequestorAccept Method");
		// TODO Auto-generated method stub
		userDao.acceptStatus(rid);
	}

	public void rejectStatus(Integer rid) {
		log.info("Invoking Dao RequestorReject Method");
		// TODO Auto-generated method stub
		userDao.rejectStatus(rid);
	}

	public void donorAcceptStatus(Integer did) {
		log.info("Invoking Dao DonorAccept Method");
		// TODO Auto-generated method stub
		userDao.donorAccepStatus(did);
	}

	public void donorRejectStatus(Integer did) {
		log.info("Invoking Dao DonorReject Method");
		// TODO Auto-generated method stub
		userDao.donorRejectStatus(did);
	}

	public String rCheckStatus(String username) {
		log.info("Invoking Dao RequestorStatus Method");
		// TODO Auto-generated method stub
		return userDao.rCheckStatus(username);
	}

	@Override
	public String dCheckStatus(String username) {
		// TODO Auto-generated method stub
		log.info("Invoking Dao DonorStatus Method");
		return userDao.dCheckStatus(username);
	}

}
