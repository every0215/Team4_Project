package com.web.store.company.dao.impl;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.web.store.company.dao.CmpServiceDao;

import com.web.store.company.model.CmpService;
import com.web.store.company.model.Company;
import com.web.store.company.model.StoreService;
@Repository
public class CmpServiceDaoImpl implements CmpServiceDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void addService(CmpService sv) {
		Session session = sessionFactory.getCurrentSession();

		session.save(sv);

	}

	@Override
	public boolean update(CmpService sv) {
		Session session = sessionFactory.getCurrentSession();
		
		CmpService queryResult = null;
		if(sv.getId()!=null) {
			queryResult = session.get(CmpService.class, sv.getId());
			session.evict(queryResult); //清除session的緩存，因為get
		}
		
		if(queryResult != null) {
			session.update(sv);
			return true;
		}
		
		return false;
	}

	@Override
	public List<CmpService> getAllServiceBycmpId(Company cmpId) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("1");
		String hqlstr = "from CmpService where company = :CmpId";
		System.out.println("2");
		Query<CmpService> queryObj = session.createQuery(hqlstr,CmpService.class); 			
		System.out.println("3");
		queryObj.setParameter("CmpId", cmpId);
		System.out.println("4");
		return queryObj.list();
	}

	@Override
	public CmpService getCmpsvById(Integer id,Integer cmpId) {
		Session session = sessionFactory.getCurrentSession();
		String hqlstr = "from CmpService where Id = :id and CompanyId = :companyId"; 
		Query<CmpService> queryObj = session.createQuery(hqlstr,CmpService.class);
		queryObj.setParameter("id", id);
		queryObj.setParameter("companyId", cmpId);
		CmpService cmpsv = queryObj.uniqueResult();
		
		return cmpsv;
		
		
	
	}

	@Override
	public CmpService getCmpsvBysvId(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		String hqlstr = "from CmpService where Id = :id"; 
		Query<CmpService> queryObj = session.createQuery(hqlstr,CmpService.class);
		queryObj.setParameter("id", id);
		
		CmpService cmpsv = queryObj.uniqueResult();
		
		return cmpsv;
		
	}
	@Override
	public List<Integer> getCmpsvBystoId(Integer stoid){
		Session session = sessionFactory.getCurrentSession();
		
		String hqlstr ="select serviceid from StoreService where storeid = "+stoid+"";

		List<Integer> queryObj = session.createSQLQuery(hqlstr).getResultList();

		return queryObj;

		
	}

}
