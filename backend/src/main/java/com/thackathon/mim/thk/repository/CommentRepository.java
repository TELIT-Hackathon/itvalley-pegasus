package com.thackathon.mim.thk.repository;

import com.thackathon.mim.thk.entity.Comment;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends QuerydslPredicateExecutor<Comment> {
}
