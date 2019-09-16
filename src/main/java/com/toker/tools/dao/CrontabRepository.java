package com.toker.tools.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.toker.tools.pojo.Ordercron;

public interface CrontabRepository extends JpaRepository<Ordercron,Integer>{

}