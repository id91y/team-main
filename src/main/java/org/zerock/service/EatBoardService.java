package org.zerock.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.zerock.domain.Criteria;
import org.zerock.domain.EatBoardVO;

public interface EatBoardService {
	
	public void register(EatBoardVO board);
	
	public EatBoardVO get(Long eatbno);
	
	public boolean modify(EatBoardVO board);
	
	public boolean remove(Long eatbno);
	
	public List<EatBoardVO> getList(Criteria cri);

	public int getTotal(Criteria cri);

	public void register(EatBoardVO board, MultipartFile file);
	
	public boolean modify(EatBoardVO board, MultipartFile file);

	public int views(Long eatbno);

}
