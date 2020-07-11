def latest(scores):
    return scores.pop()


def personal_best(scores):
    return max(scores)


def personal_top_three(scores):
    sorted_scores = sorted(scores, reverse=True)
    return sorted_scores[:3]
