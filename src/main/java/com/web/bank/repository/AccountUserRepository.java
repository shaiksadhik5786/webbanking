package com.web.bank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.bank.entity.AccountUser;

public interface AccountUserRepository extends JpaRepository<AccountUser, Long> {

	AccountUser findByEmail(String email);
}
