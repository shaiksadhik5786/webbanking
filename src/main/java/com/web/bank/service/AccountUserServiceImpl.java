package com.web.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.bank.entity.AccountUser;
import com.web.bank.repository.AccountUserRepository;

@Service
public class AccountUserServiceImpl implements AccountUserService {

	@Autowired
	private AccountUserRepository accountUserRepository;
	
	@Override
	public AccountUser save(AccountUser accountUser) {
		return accountUserRepository.save(accountUser);
	}

	@Override
	public AccountUser update(AccountUser accountUser) {
		return accountUserRepository.save(accountUser);
	}

	@Override
	public void delete(AccountUser accountUser) {
		accountUserRepository.delete(accountUser);
	}

	@Override
	public AccountUser findByEmail(String email) {
		return accountUserRepository.findByEmail(email);
	}

}
