% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evaluate_concepts.R
\name{evaluate_concepts}
\alias{evaluate_concepts}
\title{Determines the (normative) value of the nodes in a map, by running through
the entire map a number of times}
\usage{
evaluate_concepts(edgelist, nodelist)
}
\arguments{
\item{edgelist}{an edgelist}

\item{nodelist}{a nodelist, if you want to add the evaluation
to the dataframe with the basic CM measures as calculated above, be
sure to use the 'node_measures' list that was returned when running the
calculate_degrees function.}
}
\value{
Returns a list with the resulting edgelist and nodelist
}
\description{
This function is used to determine to what extent the nodes (concepts) in a CM
are considered to be positive (are supported), negative (not supported) or
ambiguous (has positive and negative consequences) as derived from the
argumentation in the map. It determines the evaluation of a node (cause-concept)
by analysing its outgoing relations (consequent paths) taking into account the
initial value (positive, negative, ambiguous) of the nodes in the consequent
path (effect-concepts) and the sign (positive, negative, non-existent) of the
relation between the node (cause-concept) and the nodes in it's consequent
paths (effect-concepts). If a node (cause-concept) is positively linked to a
consequent node (effect-concept) which is valued positively (a contributes
positively to b and b is seen as a positive thing); then logically the node
(cause-concept) is also regarded as positive. A negative relation to a positive
consequent node (effect-concept) (a diminishes b, while b is seen as a positive
thing) logically leads to the conclusion that the node (cause-concept) is
valued negatively. A negative relation to a negatively valued node (effect-concept)
suggest that the cause-concept positive.
The function takes the dyads of nodes (cause and effect-concept) and determines
the value of all cause-concepts. As nodes may have multiple consequent paths,
that may lead to different conclusions as to the value of the cause-concept,
the function needs to be iterated a number of times to reach a balance and
derive an accurate evaluation of the nodes that takes into account all relations
in the map. As for cyclical maps, it is possible that no balance may be reached
we propose setting the diameter of the map as the maximum number of iterations
}
\details{
Do we get to see this?
}
\examples{
# INCOMPLETE
# Load the data
data("edgelist")
data("nodelist")

# Run the evaluation analysis

}
