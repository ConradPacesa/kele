module Checkpoint
  def create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
    self.class.post("#{@api_url}/checkpoint_submissions",
      headers: { "authorization" => @auth_token },
      query: {
        "checkpoint_id" => checkpoint_id,
        "assignment_branch" => assignment_branch,
        "assignment_commit_link" => assignment_commit_link,
        "comment" => comment,
        "enrollment_id" => @enrollment_id
      }
    )
  end
end
