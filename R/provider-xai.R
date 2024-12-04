#' Chat with a model (Grok) hosted on xAI
#'
#' @description
#' Sign up at <https://x.ai/api>.
#'
#' This function is a lightweight wrapper around [chat_openai()] with
#' the defaults tweaked for xAI
#'
#' @export
#' @family chatbots
#' @inheritParams chat_openai
chat_xAI <- function(system_prompt = NULL,
                      turns = NULL,
                      base_url = "https://api.x.ai/v1",
                      api_key = xAI_key(),
                      model = NULL,
                      seed = NULL,
                      api_args = list(),
                      echo = NULL) {
  model <- set_default(model, "grok-beta")

  chat_openai(
    system_prompt = system_prompt,
    turns = turns,
    base_url = base_url,
    api_key = api_key,
    model = model,
    seed = seed,
    api_args = api_args,
    echo = echo
  )
}

xAI_key <- function() {
  key_get("XAI_API_KEY")
}
