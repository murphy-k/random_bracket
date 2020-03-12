# random_bracket
R scripts to create a random NCAA tournament bracket based on past seed probabilities


bracket.R from https://www.kaggle.com/c/march-machine-learning-mania-2015/discussion/12775

# Workflow

1. Run 'get_hist_bracket_data.R' (make sure the years variable is correct)
2. Run 'calc_probs.R'
3. Run 'bracket.R' to generate a bracket 
4. Run 'tournamenttrials.R' to simulate many tournaments and plot distribution.