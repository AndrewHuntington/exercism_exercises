export const hey = (message) => {
  const matchAnyNonWhitespace = /\S/;
  const isQuestion = /(\w\?\s+)|(\?$)/;
  const hasNewLineAfterQuestion = /(\?\n)/;
  const hasUppercase = /[A-Z]/;
  const hasLowercase = /[a-z]/;

  // Addressing Bob without saying anything (empty string or only whitespace)
  if (message.length === 0 || !matchAnyNonWhitespace.test(message)) {
    return "Fine. Be that way!";
  }

  // Yelling a question at Bob (All caps + ?)
  if (
    hasUppercase.test(message) &&
    !hasLowercase.test(message) &&
    isQuestion.test(message)
  ) {
    return "Calm down, I know what I'm doing!";
  }

  // Asking a regular question (Question mark that meets certain conditions)
  if (isQuestion.test(message) && !hasNewLineAfterQuestion.test(message)) {
    return "Sure.";
  }

  // Yelling at Bob (All caps)
  if (hasUppercase.test(message) && !hasLowercase.test(message)) {
    return "Whoa, chill out!";
  }

  // Standard reply
  return "Whatever.";
};
