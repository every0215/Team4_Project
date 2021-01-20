package com.web.store.company.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.store.company.dao.CompanyDao;
import com.web.store.company.model.Company;
import com.web.store.company.service.CompanyService;

@Service
@Transactional
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	CompanyDao cmpDao;
	
	@Override
	public boolean addCompany(Company cmp) {
		String cmpName = cmp.getCompanyName();
		String uniN = cmp.getUniformNumbers();
		String cmpAcc = cmp.getAccount();
		if(cmpDao.getCompanyByName(cmpName)&&cmpDao.getCompanyByUniformNum(uniN)&&(cmpDao.getCompanyByAccount(cmpAcc)==null)) {
					cmpDao.addcompany(cmp);
					return true;
		}else {
			return false;
		}
		
	}

	@Override
	public Company getCompany(String Account) {
		
		return cmpDao.getCompanyByAccount(Account);
	}

	@Override
	public List<Company> getAllCompany() {
		return cmpDao.getAllCompany();
	}

	@Override
	public Company verifyLogin(String account, String password) {
		
		return cmpDao.verifyLogin(account, password);
	}

	@Override
	public boolean updateCompany(Company cmp) {
		
		return cmpDao.update(cmp);
	}

}