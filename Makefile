.PHONY: lint format

.DEFAULT_GOAL := default_goal

lint:
	swift format lint -s --configuration .swift-format -r PracticeIosUniversalLink
format:
	swift format format --configuration .swift-format -ipr PracticeIosUniversalLink
default_goal: format lint
