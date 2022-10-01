package com.splitexp.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.splitexp.models.Settlement;

@Repository
public interface SettlementRepository extends JpaRepository<Settlement, Integer> {

	List<Settlement> findByGroupIdAndPaidToUidOrGroupIdAndPaidByUid(int groupid,int toid,int groupid2,int byid);
	List<Settlement> findByPaidToUidOrPaidByUid(int toid,int byid);
}
