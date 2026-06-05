package com.web.bank.service;

import com.web.bank.entity.AccountUser;

public interface AccountUserService {
	
	AccountUser save(AccountUser accountUser);
	AccountUser update(AccountUser accountUser);
	void delete(AccountUser accountUser);
	AccountUser findByEmail(String email);
}
