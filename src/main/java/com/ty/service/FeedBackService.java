package com.ty.service;

import java.util.List;

import com.ty.dao.FeedBackDao;
import com.ty.dto.FeedBack;

public class FeedBackService {
	FeedBackDao feedBackDao = new FeedBackDao();

	public FeedBack createFeedBack(FeedBack feedBack) {
		return feedBackDao.createFeedBack(feedBack);
	}

	public List<FeedBack> getAllFeedBack() {
		return feedBackDao.getAllFeedBack();
	}

	public FeedBack getFeedBackById(int id) {
		return feedBackDao.getFeedBackById(id);
	}

	public FeedBack updateCourses(FeedBack feedBack) {
		return feedBackDao.updateCourses(feedBack);
	}

	public FeedBack deleteCoursesById(int id) {
		return feedBackDao.deleteFeedBackById(id);
	}
}
