package com.dmatyushin.tasks_web.dbOperations.users;

import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
}
