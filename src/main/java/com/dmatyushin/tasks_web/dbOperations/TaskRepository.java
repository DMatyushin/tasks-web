package com.dmatyushin.tasks_web.dbOperations;

import org.springframework.data.repository.CrudRepository;

public interface TaskRepository extends CrudRepository<TaskItem, Integer> {

}
